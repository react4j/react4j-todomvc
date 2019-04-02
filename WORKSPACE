load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "1.2"

RULES_JVM_EXTERNAL_SHA = "e5c68b87f750309a79f59c2b69ead5c3221ffa54ff9496306937bfa1c9c8c86b"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

maven_install(
    artifacts = [
        "com.google.gwt:gwt-user:2.8.2",
        "org.realityforge.javax.annotation:javax.annotation:1.0.0",
        "com.google.jsinterop:jsinterop-annotations:1.0.2",
        "org.realityforge.arez:arez-core:0.132",
        "org.realityforge.arez:arez-processor:0.132",
        "org.realityforge.react4j:react4j-dom:0.122",
        "org.realityforge.react4j:react4j-processor:0.122",
    ],
    fetch_sources = True,
    repositories = [
        "https://repo1.maven.org/maven2",
    ],
)

load("//build_defs:gwt_2_8_2_deps.bzl", gwt_generated_maven_jars = "generated_maven_jars")

gwt_generated_maven_jars()
