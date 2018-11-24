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

maven_jar(
    name = "org_realityforge_javax_annotation",
    artifact = "org.realityforge.javax.annotation:javax.annotation:1.0.0",
)

maven_jar(
    name = "com_google_jsinterop_base",
    artifact = "com.google.jsinterop:base:1.0.0-RC1",
)

maven_jar(
    name = "org_realityforge_org_jetbrains_annotations",
    artifact = "org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:1.0.0",
)

maven_jar(
    name = "com_google_elemental2_core",
    artifact = "com.google.elemental2:elemental2-core:1.0.0-RC1",
)

maven_jar(
    name = "com_google_elemental2_promise",
    artifact = "com.google.elemental2:elemental2-promise:1.0.0-RC1",
)

maven_jar(
    name = "com_google_elemental2_dom",
    artifact = "com.google.elemental2:elemental2-dom:1.0.0-RC1",
)

maven_jar(
    name = "org_realityforge_react4j_core",
    artifact = "org.realityforge.react4j:react4j-core:0.108",
)

maven_jar(
    name = "org_realityforge_react4j_dom",
    artifact = "org.realityforge.react4j:react4j-dom:0.108",
)

maven_jar(
    name = "org_realityforge_react4j_processor",
    artifact = "org.realityforge.react4j:react4j-processor:0.108",
)

maven_jar(
    name = "org_realityforge_braincheck",
    artifact = "org.realityforge.braincheck:braincheck:1.12.0",
)

maven_jar(
    name = "com_google_gwt_user",
    artifact = "com.google.gwt:gwt-user:jar:2.8.2",
)
