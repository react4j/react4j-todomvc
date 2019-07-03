# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.04

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# +- org.realityforge.arez:arez-core:jar:0.140 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.19.0 [compile]
# |  |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  |  \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] REPLACED BY @com_google_jsinterop_annotations_head//jar (Java), //:jsinterop_annotations-j2cl (J2cl)
# |  \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] REPLACED BY @com_google_jsinterop_annotations_head//jar (Java), //:jsinterop_annotations-j2cl (J2cl)
# +- org.realityforge.arez:arez-processor:jar:0.140 [compile]
# +- org.realityforge.react4j:react4j-core:jar:0.130 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.24 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] REPLACED BY @com_google_jsinterop_annotations_head//jar (Java), //:jsinterop_annotations-j2cl (J2cl)
# |  |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile] REPLACED BY :base_j2cl (Java)
# |  +- org.realityforge.braincheck:braincheck:jar:1.19.0 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.140 [compile]
# +- org.realityforge.react4j:react4j-dom:jar:0.130 [compile]
# |  +- org.realityforge.react4j:react4j-core:jar:0.130 [compile]
# |  \- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.24 [compile]
# |     +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] REPLACED BY @com_google_jsinterop_annotations_head//jar (Java), //:jsinterop_annotations-j2cl (J2cl)
# |     +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile] REPLACED BY :base_j2cl (Java)
# |     +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.24 [compile]
# |     |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] REPLACED BY @com_google_jsinterop_annotations_head//jar (Java), //:jsinterop_annotations-j2cl (J2cl)
# |     |  +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile] REPLACED BY :base_j2cl (Java)
# |     |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.24 [compile]
# |     \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.24 [compile]
# +- org.realityforge.react4j:react4j-processor:jar:0.130 [compile]
# \- org.realityforge.com.google.jsinterop:base-j2cl:jar:1.0.0-b2-e6d791f [compile]
#    \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] REPLACED BY @com_google_jsinterop_annotations_head//jar (Java), //:jsinterop_annotations-j2cl (J2cl)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@com_google_j2cl//build_defs:rules.bzl", "j2cl_library")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "1DF387350EB57FD368BBF68EB397334B6241B5BBA816B67CF10BC69BEC541F07"

def generate_workspace_rules():
    """
        Repository rules macro to load dependencies.

        Must be run from a WORKSPACE file.
    """

    http_file(
        name = "org_realityforge_arez__arez_core__0_140",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.140/arez-core-0.140.jar",
        sha256 = "d1461a0085a74aa24af36f3e44fa76d89d23bacd1dd821c6a862337f7d1e2f60",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.140/arez-core-0.140.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_140__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.140/arez-core-0.140-sources.jar",
        sha256 = "242ed3a847bbd58e0c9d5e12b572ef272ce5dc700deaca0a4dafd6aa86d44192",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.140/arez-core-0.140-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_140",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.140/arez-processor-0.140.jar",
        sha256 = "08422e251d1bcba3940970de097656bdeec263205eba3d8834459613f976089c",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.140/arez-processor-0.140.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_140__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.140/arez-processor-0.140-sources.jar",
        sha256 = "0671f7e420d907b15e2aafa052365e3b2271ee55aefc737532488a243f39601d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.140/arez-processor-0.140-sources.jar"],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_04",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.04/bazel-depgen-0.04-all.jar",
        sha256 = "864aaca270c3ea9d44fab5405b7234ca8a9abfa9b5c98aecec8eb3457d15901b",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.04/bazel-depgen-0.04-all.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_19_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.19.0/braincheck-1.19.0.jar",
        sha256 = "52cb8d8150f9db29c159321f7fe3d5000ade739533e7f38b731090eec7124bc6",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.19.0/braincheck-1.19.0.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_19_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.19.0/braincheck-1.19.0-sources.jar",
        sha256 = "7977e608f653311ef7208d7c94fc1c22e695038e5be292843d7490680155b1b4",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.19.0/braincheck-1.19.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_24",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24.jar",
        sha256 = "6622ac035bfc2cdeff6689db11b85c72d12689e652a4649a3e384049367e2acf",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_24__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24-sources.jar",
        sha256 = "d3cad5f6bd6a60bb5d904102d1ee19c2f7f7da43c27c16f2a4f0a20cdec2d1d7",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_24",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24.jar",
        sha256 = "1d285ba81f5d15b7b27bc25bc8a26a6d1faefa9e554281acdd08e31223c12c1b",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_24__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24-sources.jar",
        sha256 = "27b20f9729109760f284d9b5ed2dfa7cff956d07d03001a705910bed9f7b3613",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_24",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24.jar",
        sha256 = "e7055316c1474b749c5af451d18fc13ddde6f1455526dceca96e7988f22e8a14",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_24__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24-sources.jar",
        sha256 = "f1daaf91423d411d728218b52ffe16eeec994bb2a616e85254ff48665a0dbe33",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f.jar",
        sha256 = "e236e2951035a7f78dbd86853f5a2483216ed5edbe982e5087c5ee778e31e327",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f__sources",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f-sources.jar",
        sha256 = "24cc5a026b88a03b044c49fdc4346297a0c028c2cf5da40b566752987bfe3a57",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f-sources.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0.jar",
        sha256 = "da4e5e4543c3a68cb27ff7bdafe5ca62f0c2117f49b6564fa11d7843f34c575e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0__sources",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0-sources.jar",
        sha256 = "f50fb17b33f6e9ba6ba396b66550aacce0ac47119c69b478de850baf46a42c3e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_130",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.130/react4j-core-0.130.jar",
        sha256 = "e1b1d59a70c7a52b09b5b87c697d3ed594ed86933f8e58307d7213fad25c4a48",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.130/react4j-core-0.130.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_130__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.130/react4j-core-0.130-sources.jar",
        sha256 = "a42e18d213c620452b8a3933233fb7f86c0b6f564eb8f59ac0997ae671b9798c",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.130/react4j-core-0.130-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_130",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.130/react4j-dom-0.130.jar",
        sha256 = "cbc3474ece1f55d25b71743e38af21d1bcb7a8286abfb0728b11819515f6d7b4",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.130/react4j-dom-0.130.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_130__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.130/react4j-dom-0.130-sources.jar",
        sha256 = "2fb71fca9d26061a3d36f9cc31e87a5815dc08a2cd49e8a40385b7ab8bc92b59",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.130/react4j-dom-0.130-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_130",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.130/react4j-processor-0.130.jar",
        sha256 = "fa4d073b05fbee27f2f28a35f2d989430a76c4e5d3ca126c4df8eabfa6bea216",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.130/react4j-processor-0.130.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_130__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.130/react4j-processor-0.130-sources.jar",
        sha256 = "84e1590c7d0beb845a8cfd8f635a5cbd947c8bdadba9f3517f537627e7a7bd7d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.130/react4j-processor-0.130-sources.jar"],
    )

def generate_targets():
    """
        Macro to define targets for dependencies.
    """

    native.genrule(
        name = "verify_config_sha256",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["command-output.txt"],
        cmd = "$(JAVA) -jar $(location :bazel_depgen) --config-file $(location //thirdparty:dependencies.yml) --quiet hash --verify-sha256 %s > \"$@\"" % (_CONFIG_SHA256),
        visibility = ["//visibility:private"],
    )

    native.genrule(
        name = "regenerate_depgen_extension_script",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["regenerate_depgen_extension_script.sh"],
        cmd = "echo \"$(JAVA) -jar $(location :bazel_depgen) --directory \\$$BUILD_WORKSPACE_DIRECTORY --config-file $(location //thirdparty:dependencies.yml) \$$@ generate \" > \"$@\"",
        visibility = ["//visibility:private"],
    )

    native.sh_binary(
        name = "regenerate_depgen_extension",
        srcs = ["regenerate_depgen_extension_script"],
        tags = [
            "local",
            "manual",
            "no-cache",
            "no-remote",
            "no-sandbox",
        ],
        data = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "arez_core",
        actual = ":org_realityforge_arez__arez_core__0_140",
    )
    native.java_import(
        name = "org_realityforge_arez__arez_core__0_140",
        jars = ["@org_realityforge_arez__arez_core__0_140//file"],
        srcjar = "@org_realityforge_arez__arez_core__0_140__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.140"],
        visibility = ["//visibility:private"],
        deps = [
            ":braincheck",
            ":javax_annotation",
            "@com_google_jsinterop_annotations_head//jar",
        ],
    )

    native.alias(
        name = "arez_core-j2cl",
        actual = ":org_realityforge_arez__arez_core__0_140-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_arez__arez_core__0_140-j2cl",
        srcs = ["@org_realityforge_arez__arez_core__0_140__sources//file"],
        visibility = ["//visibility:private"],
        deps = [
            "//:jsinterop_annotations-j2cl",
            ":braincheck-j2cl",
            ":javax_annotation-j2cl",
        ],
    )

    native.alias(
        name = "arez_processor",
        actual = ":org_realityforge_arez__arez_processor__0_140",
    )
    native.java_import(
        name = "org_realityforge_arez__arez_processor__0_140__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_140//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_140__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.140"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    native.java_plugin(
        name = "org_realityforge_arez__arez_processor__0_140__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_140__plugin_library"],
    )
    native.java_library(
        name = "org_realityforge_arez__arez_processor__0_140",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_140__arez_processor_arezprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "bazel_depgen",
        actual = ":org_realityforge_bazel_depgen__bazel_depgen__0_04",
    )
    native.java_import(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_04",
        jars = ["@org_realityforge_bazel_depgen__bazel_depgen__0_04//file"],
        tags = ["maven_coordinates=org.realityforge.bazel.depgen:bazel-depgen:0.04"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "braincheck",
        actual = ":org_realityforge_braincheck__braincheck__1_19_0",
    )
    native.java_import(
        name = "org_realityforge_braincheck__braincheck__1_19_0",
        jars = ["@org_realityforge_braincheck__braincheck__1_19_0//file"],
        srcjar = "@org_realityforge_braincheck__braincheck__1_19_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.braincheck:braincheck:1.19.0"],
        visibility = ["//visibility:private"],
        deps = [
            ":javax_annotation",
            "@com_google_jsinterop_annotations_head//jar",
        ],
    )

    native.alias(
        name = "braincheck-j2cl",
        actual = ":org_realityforge_braincheck__braincheck__1_19_0-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_braincheck__braincheck__1_19_0-j2cl",
        srcs = ["@org_realityforge_braincheck__braincheck__1_19_0__sources//file"],
        js_suppress = ["checkDebuggerStatement"],
        visibility = ["//visibility:private"],
        deps = [
            "//:jsinterop_annotations-j2cl",
            ":javax_annotation-j2cl",
        ],
    )

    native.alias(
        name = "elemental2_core",
        actual = ":org_realityforge_com_google_elemental2__elemental2_core__2_24",
    )
    native.java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_24",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_core__2_24//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_core__2_24__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-core:2.24"],
        visibility = ["//visibility:private"],
        deps = [
            ":base_j2cl",
            ":elemental2_promise",
            "@com_google_jsinterop_annotations_head//jar",
        ],
    )

    native.alias(
        name = "elemental2_dom",
        actual = ":org_realityforge_com_google_elemental2__elemental2_dom__2_24",
    )
    native.java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_24",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_dom__2_24//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_dom__2_24__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-dom:2.24"],
        visibility = ["//visibility:private"],
        deps = [
            ":base_j2cl",
            ":elemental2_core",
            ":elemental2_promise",
            "@com_google_jsinterop_annotations_head//jar",
        ],
    )

    native.alias(
        name = "elemental2_promise",
        actual = ":org_realityforge_com_google_elemental2__elemental2_promise__2_24",
    )
    native.java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_24",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_promise__2_24//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_promise__2_24__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-promise:2.24"],
        visibility = ["//visibility:private"],
        deps = [
            ":base_j2cl",
            "@com_google_jsinterop_annotations_head//jar",
        ],
    )

    native.alias(
        name = "base_j2cl",
        actual = ":org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f",
    )
    native.java_import(
        name = "org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f",
        jars = ["@org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f//file"],
        srcjar = "@org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.jsinterop:base-j2cl:1.0.0-b2-e6d791f"],
        visibility = ["//visibility:private"],
        deps = ["@com_google_jsinterop_annotations_head//jar"],
    )

    native.alias(
        name = "javax_annotation",
        actual = ":org_realityforge_javax_annotation__javax_annotation__1_0_0",
    )
    native.java_import(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0",
        jars = ["@org_realityforge_javax_annotation__javax_annotation__1_0_0//file"],
        srcjar = "@org_realityforge_javax_annotation__javax_annotation__1_0_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.javax.annotation:javax.annotation:1.0.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "javax_annotation-j2cl",
        actual = ":org_realityforge_javax_annotation__javax_annotation__1_0_0-j2cl",
    )
    native.java_import(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0__j2cl_library",
        jars = ["@org_realityforge_javax_annotation__javax_annotation__1_0_0//file"],
        srcjar = "@org_realityforge_javax_annotation__javax_annotation__1_0_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.javax.annotation:javax.annotation:1.0.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    j2cl_library(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0-j2cl",
        srcs = ["org_realityforge_javax_annotation__javax_annotation__1_0_0__j2cl_library"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "react4j_core",
        actual = ":org_realityforge_react4j__react4j_core__0_130",
    )
    native.java_import(
        name = "org_realityforge_react4j__react4j_core__0_130",
        jars = ["@org_realityforge_react4j__react4j_core__0_130//file"],
        srcjar = "@org_realityforge_react4j__react4j_core__0_130__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.130"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":braincheck",
            ":elemental2_promise",
            ":javax_annotation",
        ],
    )

    native.alias(
        name = "react4j_dom",
        actual = ":org_realityforge_react4j__react4j_dom__0_130",
    )
    native.java_import(
        name = "org_realityforge_react4j__react4j_dom__0_130",
        jars = ["@org_realityforge_react4j__react4j_dom__0_130//file"],
        srcjar = "@org_realityforge_react4j__react4j_dom__0_130__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.130"],
        visibility = ["//visibility:private"],
        deps = [
            ":elemental2_dom",
            ":react4j_core",
        ],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_130",
    )
    native.java_import(
        name = "org_realityforge_react4j__react4j_processor__0_130__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_130//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_130__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.130"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    native.java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_130__react4j_processor_reactprocessor__plugin",
        processor_class = "react4j.processor.ReactProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_130__plugin_library"],
    )
    native.java_library(
        name = "org_realityforge_react4j__react4j_processor__0_130",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_130__react4j_processor_reactprocessor__plugin"],
        visibility = ["//visibility:private"],
    )
