package(default_visibility = ["//visibility:private"])

load("//build_defs:gwt.bzl", "GWT_OPTIMIZED_COMPILER_FLAGS", "gwt_application")

DEPS = [
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

SRCS = glob(["src/main/java/**/*.java"])

RESOURCES = glob(
    ["src/main/java/**/*"],
    exclude = ["**/*.java"],
)

gwt_application(
    name = "react4j_todomvc_dev",
    srcs = SRCS,
    dev_flags = [
        "-logLevel INFO",
        "-XmethodNameDisplayMode FULL",
    ],
    dev_jvm_flags = [
        "-Xmx1G",
    ],
    modules = [
        "react4j.todomvc.TodomvcDev",
    ],
    resources = RESOURCES,
    visibility = ["//visibility:public"],
    deps = DEPS,
)

gwt_application(
    name = "react4j_todomvc",
    srcs = SRCS,
    compiler_flags = GWT_OPTIMIZED_COMPILER_FLAGS,
    dev_flags = [
        "-logLevel INFO",
        "-XmethodNameDisplayMode FULL",
    ],
    dev_jvm_flags = [
        "-Xmx1G",
    ],
    modules = [
        "react4j.todomvc.TodomvcProd",
    ],
    resources = RESOURCES,
    visibility = ["//visibility:public"],
    deps = DEPS,
)
