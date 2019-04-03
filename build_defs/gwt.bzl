"""GWT Rules

Starlark rules for building [GWT](http://www.gwtproject.org/) applications using Bazel.
"""

_GWT_COMPILER = "com.google.gwt.dev.Compiler"

_GWT_COMPILER_JVM_FLAGS = ["-Xmx1G"]

_GWT_COMPILER_FLAGS = [
    "-strict",
    "-sourceLevel 1.8",
    "-logLevel INFO",
]

GWT_OPTIMIZED_COMPILER_FLAGS = [
    "-XdisableClassMetadata",
    "-XdisableCastChecking",
    "-optimize 9",
    "-nocheckAssertions",
    "-XmethodNameDisplayMode NONE",
] + _GWT_COMPILER_FLAGS

def _get_dep_jars(ctx):
    """ Find all transitive dependencies """
    all_deps = depset(ctx.files.deps)
    for this_dep in ctx.attr.deps:
        if hasattr(this_dep, "java"):
            all_deps += this_dep.java.transitive_runtime_deps
            all_deps += this_dep.java.transitive_source_jars
    return all_deps

def gwt_binary_impl(ctx):
    output_archive = ctx.outputs.output_archive
    extras_archive = ctx.outputs.extras_archive
    output_dir = output_archive.path + ".gwt_output"
    extra_dir = output_archive.path + ".extra"

    # Find all transitive dependencies
    all_deps = _get_dep_jars(ctx)

    cmd = "set -e\n"

    # Run the GWT compiler
    cmd += "%s %s -Dgwt.normalizeTimestamps=true -cp %s %s -war %s -deploy %s -extra %s %s %s\n" % (
        ctx.attr._jdk[java_common.JavaRuntimeInfo].java_executable_exec_path,
        " ".join(ctx.attr.jvm_flags),
        ":".join([dep.path for dep in all_deps]),
        _GWT_COMPILER,
        output_dir + "/" + ctx.attr.output_root,
        output_dir + "/WEB-INF/deploy/" + ctx.attr.output_root,
        extra_dir,
        " ".join(ctx.attr.compiler_flags),
        " ".join(ctx.attr.modules),
    )

    # Copy pubs into the output archive
    if len(ctx.files.pubs) > 0:
        cmd += "cp -LR %s %s\n" % (
            " ".join([pub.path for pub in ctx.files.pubs]),
            output_dir,
        )

    # Don't include the unit cache in the output
    cmd += "rm -rf %s/gwt-unitCache\n" % output_dir

    cmd += "find %s -name compilation-mappings.txt -exec rm -f {} \;\n" % output_dir

    # Discover all of the generated files and write their paths to a file. Run the
    # paths through sed to trim out everything before the package root so that the
    # paths match how they should look in the archive file.
    cmd += "find %s -type f | sort | sed 's:^%s/::' > file_list\n" % (output_dir, output_dir)

    # Create a archive file using the discovered paths
    cmd += "root=`pwd`\n"
    cmd += "cd %s; $root/%s Cc ../%s @$root/file_list\n" % (
        output_dir,
        ctx.executable._zip.path,
        output_archive.basename,
    )
    cmd += "cd $root\n"

    # Discover all of the generated files and write their paths to a file. Run the
    # paths through sed to trim out everything before the package root so that the
    # paths match how they should look in the archive file.
    cmd += "find %s -type f | sort | sed 's:^%s/::' > file_list\n" % (extra_dir, extra_dir)

    # Create the extras archive file using the discovered paths
    cmd += "cd %s; $root/%s Cc ../%s @$root/file_list\n" % (
        extra_dir,
        ctx.executable._zip.path,
        extras_archive.basename,
    )
    cmd += "cd $root\n"

    # Execute the command
    ctx.action(
        inputs = ctx.files.pubs + list(all_deps) + ctx.files._jdk + ctx.files._zip,
        tools = ctx.files._zip,
        outputs = [output_archive, extras_archive],
        mnemonic = "GwtCompile",
        progress_message = "GWT compiling " + output_archive.short_path,
        command = cmd,
    )

gwt_binary = rule(
    implementation = gwt_binary_impl,
    attrs = {
        "deps": attr.label_list(allow_files = FileType([".jar"])),
        "pubs": attr.label_list(allow_files = True),
        "modules": attr.string_list(mandatory = True),
        "output_root": attr.string(default = ""),
        "compiler_flags": attr.string_list(default = _GWT_COMPILER_FLAGS),
        "jvm_flags": attr.string_list(default = _GWT_COMPILER_JVM_FLAGS),
        "_jdk": attr.label(default = Label("@bazel_tools//tools/jdk:current_java_runtime")),
        "_zip": attr.label(
            default = Label("@bazel_tools//tools/zip:zipper"),
            executable = True,
            cfg = "host",
            single_file = True,
        ),
    },
    outputs = {
        "output_archive": "%{name}.zip",
        "extras_archive": "%{name}-extras.zip",
    },
)

def _gwt_dev_impl(ctx):
    # Find all transitive dependencies that need to go on the classpath
    all_deps = _get_dep_jars(ctx)
    dep_paths = [dep.short_path for dep in all_deps]
    cmd = "#!/bin/bash\n\n"

    cmd += "rm -rf archive\n"
    cmd += "mkdir archive\n"

    # Copy pubs to the archive directory
    if len(ctx.files.pubs) > 0:
        cmd += "cp -LR %s archive\n" % " ".join([pub.path for pub in ctx.files.pubs])

    # Set up a working directory for dev mode
    cmd += "mkdir -p dev-workdir\n"

    # Determine the root directory of the package hierarchy. This needs to be on
    # the classpath for GWT to see changes to source files.
    cmd += 'echo "Dev mode working directoy is $(pwd)"\n'
    cmd += 'javaRoots=("%s")\n' % '" "'.join(ctx.attr.java_roots)
    cmd += "srcClasspath=''\n"
    cmd += "for root in ${javaRoots[@]}; do\n"
    cmd += "  rootDir=$(pwd | sed -e 's:\(.*\)%s.*:\\1:')../../../$root\n" % (ctx.attr.package_name)
    cmd += "  if [ -d $rootDir ]; then\n"
    cmd += "    srcClasspath+=:$rootDir\n"
    cmd += '    echo "Using Java sources rooted at $rootDir"\n'
    cmd += "  else\n"
    cmd += '    echo "No Java sources found under $rootDir"\n'
    cmd += "  fi\n"
    cmd += "done\n"

    # Run dev mode
    cmd += "%s %s -cp $srcClasspath:%s com.google.gwt.dev.DevMode -war %s -workDir ./dev-workdir %s %s\n" % (
        ctx.attr._jdk[java_common.JavaRuntimeInfo].java_executable_exec_path,
        " ".join(ctx.attr.jvm_flags),
        ":".join(dep_paths),
        "archive/" + ctx.attr.output_root,
        " ".join(ctx.attr.dev_flags),
        " ".join(ctx.attr.modules),
    )

    # Return the script and all dependencies needed to run it
    ctx.file_action(
        output = ctx.outputs.executable,
        content = cmd,
    )
    return struct(
        executable = ctx.outputs.executable,
        runfiles = ctx.runfiles(files = list(all_deps) + ctx.files.pubs + ctx.files._jdk),
    )

_gwt_dev = rule(
    implementation = _gwt_dev_impl,
    attrs = {
        "package_name": attr.string(mandatory = True),
        "java_roots": attr.string_list(mandatory = True),
        "deps": attr.label_list(mandatory = True, allow_files = FileType([".jar"])),
        "modules": attr.string_list(mandatory = True),
        "pubs": attr.label_list(allow_files = True),
        "output_root": attr.string(default = ""),
        "dev_flags": attr.string_list(),
        "jvm_flags": attr.string_list(),
        "_jdk": attr.label(default = Label("@bazel_tools//tools/jdk:current_java_runtime")),
    },
    executable = True,
)

def gwt_application(
        name,
        srcs = [],
        resources = [],
        modules = [],
        pubs = [],
        deps = [],
        visibility = [],
        output_root = "",
        java_roots = ["java", "javatests", "src/main/java", "src/test/java"],
        gwt_dev_deps = ["@gwt_maven//:com_google_gwt_gwt_dev"],
        compiler_flags = [],
        compiler_jvm_flags = [],
        dev_flags = [],
        dev_jvm_flags = []):
    # We build up a separate deploy jar to avoid attempting to pass classpath on the command line
    # which will break in some environments that have many deps
    deps_artifact = name + "-deps"
    native.java_binary(
        name = deps_artifact,
        main_class = name,
        resources = resources,
        srcs = srcs,
        deps = deps,
        visibility = ["//visibility:private"],
        runtime_deps = gwt_dev_deps,
    )

    # Create the archive and dev mode targets
    gwt_binary(
        name = name,
        pubs = pubs,
        output_root = output_root,
        deps = [
            deps_artifact + "_deploy.jar",
            deps_artifact + "_deploy-src.jar",
        ],
        modules = modules,
        visibility = visibility,
        compiler_flags = compiler_flags,
        jvm_flags = compiler_jvm_flags,
    )
    _gwt_dev(
        name = name + "-dev",
        java_roots = java_roots,
        package_name = native.package_name(),
        deps = [
            deps_artifact + "_deploy.jar",
            deps_artifact + "_deploy-src.jar",
        ],
        modules = modules,
        visibility = visibility,
        pubs = pubs,
        output_root = output_root,
        dev_flags = dev_flags,
        jvm_flags = dev_jvm_flags,
    )

load("@rules_jvm_external//:specs.bzl", "maven")
load("@rules_jvm_external//:defs.bzl", "maven_install")

def setup_workspace(repository_name = "gwt_maven", version = "2.8.2"):
    """Load all dependencies needed for GWT."""

    maven_install(
        name = repository_name,
        artifacts = [
            maven.artifact(
                group = "com.google.gwt",
                artifact = "gwt-dev",
                version = version,
                exclusions = [
                    "xerces:xercesImpl",
                ],
            ),
        ],
        fetch_sources = True,
        repositories = [
            "https://repo1.maven.org/maven2",
        ],
        use_unsafe_shared_cache = True,
    )
