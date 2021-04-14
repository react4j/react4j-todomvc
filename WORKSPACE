workspace(name = "org_realityforge_react4j_todomvc")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Uncomment this to use a local j2cl
#local_repository(
#    name = "com_google_j2cl",
#    path = "/Users/peter/Code/realityforge/j2cl",
#)

http_archive(
    name = "com_google_j2cl",
    strip_prefix = "j2cl-master",
    url = "https://github.com/google/j2cl/archive/master.zip",
)

load("@com_google_j2cl//build_defs:repository.bzl", "load_j2cl_repo_deps")

load_j2cl_repo_deps()

load("@com_google_j2cl//build_defs:rules.bzl", "setup_j2cl_workspace")

setup_j2cl_workspace()

load("//thirdparty:dependencies.bzl", "generate_workspace_rules")

generate_workspace_rules()

# Required for jsinterop-base dependencies
_JSINTEROP_BASE_VERSION = "a2b98ca84a4daa04d69d90dce49bc74108ad733c"
http_archive(
    name = "com_google_jsinterop_base",
    strip_prefix = "jsinterop-base-%s" % _JSINTEROP_BASE_VERSION,
    url = "https://github.com/google/jsinterop-base/archive/%s.zip" % _JSINTEROP_BASE_VERSION,
)
