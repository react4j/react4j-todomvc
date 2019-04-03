package(default_visibility = ["//visibility:public"])

load("//build_defs:gwt_application.bzl", "gwt_application")

gwt_application(
    name = "react4j_todomvc_dev",
    srcs = glob(["src/main/java/**/*.java"]),
    compiler_flags = [
        "-strict",
        "-sourceLevel 1.8",
        "-logLevel INFO",
    ],
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
    deps = [
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
    ],
)

gwt_application(
    name = "react4j_todomvc",
    srcs = glob(["src/main/java/**/*.java"]),
    compiler_flags = [
        "-strict",
        "-sourceLevel 1.8",
        "-logLevel INFO",
        "-XdisableClassMetadata",
        "-XdisableCastChecking",
        "-optimize 9",
        "-nocheckAssertions",
        "-XmethodNameDisplayMode NONE",
    ],
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
    deps = [
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
    ],
)
