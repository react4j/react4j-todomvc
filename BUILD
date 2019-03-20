package(default_visibility = ["//visibility:public"])

load("//build_defs:gwt_application.bzl", "gwt_application")

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
        "-checkAssertions",
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
        "react4j.todomvc.TodomvcDev",
    ],
    pubs = glob(
        ["src/main/java/*"],
        exclude_directories = 0,
    ),
    resources = glob(["src/main/java/**/*"]),
    visibility = ["//visibility:public"],
    deps = [
        ":arez_processor",
        ":react4j_processor",
        "@org_realityforge_javax_annotation//jar",
        "@org_realityforge_com_google_jsinterop_base//jar",
        "@org_realityforge_arez_core//jar",
        "@org_realityforge_arez_processor//jar",
        "@org_realityforge_com_google_elemental2_core//jar",
        "@org_realityforge_com_google_elemental2_promise//jar",
        "@org_realityforge_com_google_elemental2_dom//jar",
        "@org_realityforge_braincheck//jar",
        "@org_realityforge_react4j_core//jar",
        "@org_realityforge_react4j_dom//jar",
    ],
)

java_plugin(
    name = "react4j_processor_plugin",
    processor_class = "react4j.processor.ReactProcessor",
    deps = ["@org_realityforge_react4j_processor//jar"],
)

java_library(
    name = "react4j_processor",
    exported_plugins = [
        ":react4j_processor_plugin",
    ],
)

java_plugin(
    name = "arez_processor_plugin",
    processor_class = "arez.processor.ArezProcessor",
    deps = ["@org_realityforge_arez_processor//jar"],
)

java_library(
    name = "arez_processor",
    exported_plugins = [
        ":arez_processor_plugin",
    ],
)
