package(default_visibility = ["//visibility:public"])

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
    plugins = ["arez_processor","react4j_processor"],
    deps = [
        "@org_realityforge_javax_annotation//jar",
        "@com_google_jsinterop_annotations//jar",
        "@org_realityforge_com_google_jsinterop_base//jar",
        "@org_realityforge_com_google_elemental2_core//jar",
        "@org_realityforge_com_google_elemental2_promise//jar",
        "@org_realityforge_com_google_elemental2_dom//jar",
        "@org_realityforge_arez_core//jar",
        "@org_realityforge_react4j_core//jar",
        "@org_realityforge_react4j_dom//jar",
        "@org_realityforge_braincheck//jar",
        "@com_google_gwt_user//jar",
    ],
)
