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

gwt_application(
    name = "react4j_todomvc_dev",
    srcs = glob(["src/main/java/**/*.java"]),
    dev_flags = [
        "-logLevel INFO",
        "-XmethodNameDisplayMode FULL",
    ],
    dev_jvm_flags = [
        "-Xmx1G",
    ],
    java_roots = [
        "app/src/main/java",
    ],
    modules = [
        "react4j.todomvc.TodomvcDev",
    ],
    resources = glob(["src/main/java/**/*"]),
    visibility = ["//visibility:public"],
    deps = DEPS,
)

gwt_application(
    name = "react4j_todomvc",
    srcs = glob(["src/main/java/**/*.java"]),
    compiler_flags = GWT_OPTIMIZED_COMPILER_FLAGS,
    dev_flags = [
        "-logLevel INFO",
        "-XmethodNameDisplayMode FULL",
    ],
    dev_jvm_flags = [
        "-Xmx1G",
    ],
    java_roots = [
        "app/src/main/java",
    ],
    modules = [
        "react4j.todomvc.TodomvcProd",
    ],
    resources = glob(["src/main/java/**/*"]),
    visibility = ["//visibility:public"],
    deps = DEPS,
)
