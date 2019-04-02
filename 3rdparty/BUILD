package(default_visibility = ["//visibility:public"])

alias(
    name = "jsinterop_base",
    actual = "@maven//:org_realityforge_com_google_jsinterop_base",
)

alias(
    name = "elemental2_dom",
    actual = "@maven//:org_realityforge_com_google_elemental2_elemental2_dom",
)

alias(
    name = "arez_core",
    actual = "@maven//:org_realityforge_arez_arez_core",
)

alias(
    name = "react4j_core",
    actual = "@maven//:org_realityforge_react4j_react4j_core",
)

alias(
    name = "react4j_dom",
    actual = "@maven//:org_realityforge_react4j_react4j_dom",
)

java_library(
    name = "arez_processor",
    exported_plugins = [
        ":arez_processor_plugin",
    ],
    visibility = [
        "//visibility:public",
    ],
    exports = [
        "@maven//:org_realityforge_arez_arez_processor",
    ],
)

java_plugin(
    name = "arez_processor_plugin",
    generates_api = False,
    processor_class = "arez.processor.ArezProcessor",
    visibility = [
        "//visibility:private",
    ],
    deps = [
        "@maven//:org_realityforge_arez_arez_processor",
    ],
)

java_library(
    name = "react4j_processor",
    exported_plugins = [
        ":react4j_processor_plugin",
    ],
    exports = [
        "@maven//:org_realityforge_react4j_react4j_processor",
    ],
)

java_plugin(
    name = "react4j_processor_plugin",
    generates_api = False,
    processor_class = "react4j.processor.ReactProcessor",
    visibility = [
        "//visibility:private",
    ],
    deps = [
        "@maven//:org_realityforge_react4j_react4j_processor",
    ],
)
