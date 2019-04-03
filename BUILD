package(default_visibility = ["//visibility:private"])

load("//build_defs:gwt.bzl", "GWT_OPTIMIZED_COMPILER_FLAGS", "gwt_application")

_DEPS = [
    "//thirdparty:arez_core",
    "//thirdparty:arez_processor",
    "//thirdparty:elemental2_dom",
    "//thirdparty:gwt_user",
    "//thirdparty:javax_annotation",
    "//thirdparty:jsinterop_annotations",
    "//thirdparty:jsinterop_base",
    "//thirdparty:react4j_core",
    "//thirdparty:react4j_dom",
    "//thirdparty:react4j_processor",
]

_SRCS = glob(["src/main/java/**/*.java"])

_RESOURCES = glob(
    ["src/main/java/**/*"],
    exclude = ["**/*.java"],
)

gwt_application(
    name = "react4j_todomvc_dev",
    srcs = _SRCS,
    modules = ["react4j.todomvc.TodomvcDev"],
    resources = _RESOURCES,
    deps = _DEPS,
)

gwt_application(
    name = "react4j_todomvc",
    srcs = _SRCS,
    compiler_flags = GWT_OPTIMIZED_COMPILER_FLAGS,
    modules = ["react4j.todomvc.TodomvcProd"],
    resources = _RESOURCES,
    deps = _DEPS,
)
