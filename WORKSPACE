workspace(name = "org_realityforge_react4j_todomvc")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_google_j2cl",
    strip_prefix = "j2cl-master",
    url = "https://github.com/google/j2cl/archive/master.zip",
)

load("@com_google_j2cl//build_defs:repository.bzl", "load_j2cl_repo_deps")

load_j2cl_repo_deps()

load("@com_google_j2cl//build_defs:rules.bzl", "setup_j2cl_workspace")

setup_j2cl_workspace()

RULES_JVM_EXTERNAL_TAG = "1.2"

RULES_JVM_EXTERNAL_SHA = "e5c68b87f750309a79f59c2b69ead5c3221ffa54ff9496306937bfa1c9c8c86b"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

maven_install(
    artifacts = [
        "org.realityforge.javax.annotation:javax.annotation:1.0.0",
        "com.google.jsinterop:jsinterop-annotations:1.0.2",
        "org.realityforge.com.google.jsinterop:base-j2cl:1.0.0-b2-e6d791f",
        "org.realityforge.arez:arez-core:0.132",
        "org.realityforge.arez:arez-processor:0.132",
        maven.artifact(
            group = "org.realityforge.react4j",
            artifact = "react4j-dom",
            version = "0.122",
            exclusions = [
                maven.exclusion(
                    group = "org.realityforge.com.google.jsinterop",
                    artifact = "base",
                ),
            ],
        ),
        "org.realityforge.react4j:react4j-processor:0.122",
    ],
    fetch_sources = True,
    repositories = [
        "https://repo1.maven.org/maven2",
    ],
    use_unsafe_shared_cache = True,
)
