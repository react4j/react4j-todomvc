package(default_visibility = ["//visibility:public"])

load("@com_google_j2cl//build_defs:rules.bzl", "j2cl_application", "j2cl_import", "j2cl_library")
load("@io_bazel_rules_closure//closure:defs.bzl", "closure_js_library")

java_plugin(
    name = "react4j_processor",
    processor_class = "react4j.processor.ReactProcessor",
    deps = ["@org_realityforge_react4j_processor//jar"],
)

java_plugin(
    name = "arez_processor",
    processor_class = "arez.processor.ArezProcessor",
    deps = ["@org_realityforge_arez_processor//jar"],
)

java_library(
    name = "react4j-todomvc",
    srcs = glob(["src/main/java/react4j/todomvc/**/*.java"]),
    plugins = [
        "arez_processor",
        "react4j_processor",
    ],
    deps = [
        "@com_google_jsinterop_annotations//jar",
        "@org_realityforge_arez_core//jar",
        "@org_realityforge_braincheck//jar",
        "@org_realityforge_com_google_elemental2_core//jar",
        "@org_realityforge_com_google_elemental2_dom//jar",
        "@org_realityforge_com_google_elemental2_promise//jar",
        "@org_realityforge_com_google_jsinterop_base//jar",
        "@org_realityforge_javax_annotation//jar",
        "@org_realityforge_react4j_core//jar",
        "@org_realityforge_react4j_dom//jar",
    ],
)

j2cl_import(
    name = "org_realityforge_javax_annotation-j2cl",
    jar = "@org_realityforge_javax_annotation//jar",
)

j2cl_import(
    name = "com_google_jsinterop_annotations-j2cl",
    jar = "@com_google_jsinterop_annotations//jar",
)

j2cl_import(
    name = "org_realityforge_com_google_jsinterop_base-j2cl",
    jar = "@org_realityforge_com_google_jsinterop_base//jar",
)

j2cl_import(
    name = "org_realityforge_com_google_elemental2_core-j2cl",
    jar = "@org_realityforge_com_google_elemental2_core//jar",
)

j2cl_import(
    name = "org_realityforge_com_google_elemental2_promise-j2cl",
    jar = "@org_realityforge_com_google_elemental2_promise//jar",
)

j2cl_import(
    name = "org_realityforge_com_google_elemental2_dom-j2cl",
    jar = "@org_realityforge_com_google_elemental2_dom//jar",
)

j2cl_import(
    name = "org_realityforge_arez_core-j2cl",
    jar = "@org_realityforge_arez_core//jar",
)

j2cl_import(
    name = "org_realityforge_react4j_core-j2cl",
    jar = "@org_realityforge_react4j_core//jar",
)

j2cl_import(
    name = "org_realityforge_react4j_dom-j2cl",
    jar = "@org_realityforge_react4j_dom//jar",
)

j2cl_import(
    name = "org_realityforge_braincheck-j2cl",
    jar = "@org_realityforge_braincheck//jar",
)

j2cl_library(
    name = "react4j-todomvc-j2cl",
    srcs = glob(["src/main/java/react4j/todomvc/**/*.java"]),
    plugins = [
        "arez_processor",
        "react4j_processor",
    ],
    deps = [
        "com_google_jsinterop_annotations-j2cl",
        "org_realityforge_arez_core-j2cl",
        "org_realityforge_braincheck-j2cl",
        "org_realityforge_com_google_elemental2_core-j2cl",
        "org_realityforge_com_google_elemental2_dom-j2cl",
        "org_realityforge_com_google_elemental2_promise-j2cl",
        "org_realityforge_com_google_jsinterop_base-j2cl",
        "org_realityforge_javax_annotation-j2cl",
        "org_realityforge_react4j_core-j2cl",
        "org_realityforge_react4j_dom-j2cl",
    ],
)

closure_js_library(
    name = "react4j-closure",
    srcs = ["src/main/java/react4j/todomvc/App.js"],
    deps = [":react4j-todomvc-j2cl"],
)
