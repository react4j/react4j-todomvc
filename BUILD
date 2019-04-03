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
    compiler_jvm_flags = [
        "-Xmx1G",
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
        "//3rdparty:arez_core",
        "//3rdparty:arez_processor",
        "//3rdparty:elemental2_dom",
        "//3rdparty:gwt_user",
        "//3rdparty:javax_annotation",
        "//3rdparty:jsinterop_annotations",
        "//3rdparty:jsinterop_base",
        "//3rdparty:react4j_core",
        "//3rdparty:react4j_dom",
        "//3rdparty:react4j_processor",
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
    compiler_jvm_flags = [
        "-Xmx1G",
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
        "//3rdparty:arez_core",
        "//3rdparty:arez_processor",
        "//3rdparty:elemental2_dom",
        "//3rdparty:gwt_user",
        "//3rdparty:javax_annotation",
        "//3rdparty:jsinterop_annotations",
        "//3rdparty:jsinterop_base",
        "//3rdparty:react4j_core",
        "//3rdparty:react4j_dom",
        "//3rdparty:react4j_processor",
    ],
)
