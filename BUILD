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

j2cl_import(
    name = "com_google_jsinterop_annotations-j2cl",
    jar = "@com_google_jsinterop_annotations//jar",
)

j2cl_import(
    name = "org_realityforge_react4j_core-j2cl",
    jar = "@org_realityforge_react4j_core//jar",
)

j2cl_import(
    name = "gwt-javaemul-internal-annotations-j2cl",
    jar = "@org_gwtproject_gwt//user:gwt-javaemul-internal-annotations",
)

j2cl_library(
    name = "react4j-todomvc-j2cl",
    srcs = glob(["src/main/java/react4j/todomvc/**/*.java"]),
    deps = [
        ":org_realityforge_react4j_core-j2cl",
        ":com_google_jsinterop_annotations-j2cl",
        ":gwt-javaemul-internal-annotations-j2cl",
    ],
    plugins = [
        "arez_processor",
        "react4j_processor",
    ],
)

closure_js_library(
    name = "react4j-closure",
    srcs = ["src/main/java/react4j/todomvc/App.js"],
    deps = [":react4j-todomvc-j2cl"],
)

j2cl_application(
    name = "react4j",
    entry_points = ["react4j.todomvc.App"],
    deps = [":react4j-closure"],
)
