workspace(name = "org_realityforge_react4j_todomvc")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_java",
    strip_prefix = "rules_java-0.1.1",
    sha256 = "6b753b0c02b7fc1902e39f4f330c5958a42f31ea7832c11c11e5c11306292c27",
    urls = ["https://github.com/bazelbuild/rules_java/archive/0.1.1.tar.gz"],
)

load("//thirdparty:dependencies.bzl", "generate_workspace_rules")

generate_workspace_rules()

load("//build_defs:gwt.bzl", "gwt_generate_workspace_rules")

gwt_generate_workspace_rules()
