# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.10

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# +- org.realityforge.arez:arez-core:jar:0.196 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile] REPLACED BY :jsinterop_annotations-j2cl (J2cl)
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.braincheck:braincheck-core:jar:1.30.0 [compile] (conflicts with 1.31.0)
# |  \- org.realityforge.grim:grim-annotations:jar:0.05 [compile]
# |     \- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# +- org.realityforge.arez:arez-processor:jar:0.196 [compile]
# +- org.realityforge.arez.spytools:arez-spytools:jar:0.126 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.akasha:akasha-java:jar:0.06 [compile]
# |  |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile] REPLACED BY :jsinterop_annotations-j2cl (J2cl)
# |  |  \- com.google.jsinterop:base:jar:1.0.0 [compile] REPLACED BY :jsinterop_base-j2cl (J2cl)
# |  \- org.realityforge.arez:arez-core:jar:0.196 [compile]
# +- org.realityforge.react4j:react4j-core:jar:0.181 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile] REPLACED BY :jsinterop_annotations-j2cl (J2cl)
# |  +- com.google.jsinterop:base:jar:1.0.0 [compile] REPLACED BY :jsinterop_base-j2cl (J2cl)
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.05 [compile]
# |  +- org.realityforge.zemeckis:zemeckis-core:jar:0.09 [compile] (conflicts with 0.10)
# |  +- org.realityforge.arez:arez-core:jar:0.192 [compile] (conflicts with 0.196)
# |  \- org.realityforge.akasha:akasha-java:jar:0.03 [compile] (conflicts with 0.06)
# +- org.realityforge.react4j:react4j-dom:jar:0.181 [compile]
# |  \- org.realityforge.react4j:react4j-core:jar:0.181 [compile]
# +- org.realityforge.react4j:react4j-processor:jar:0.181 [compile]
# +- org.realityforge.sting:sting-core:jar:0.18 [compile]
# |  \- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# +- org.realityforge.sting:sting-processor:jar:0.18 [compile]
# +- org.realityforge.zemeckis:zemeckis-core:jar:0.10 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile] REPLACED BY :jsinterop_annotations-j2cl (J2cl)
# |  +- com.google.jsinterop:base:jar:1.0.0 [compile] REPLACED BY :jsinterop_base-j2cl (J2cl)
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.akasha:akasha-java:jar:0.06 [compile]
# |  +- org.realityforge.braincheck:braincheck-core:jar:1.30.0 [compile] (conflicts with 1.31.0)
# |  \- org.realityforge.grim:grim-annotations:jar:0.05 [compile]
# \- org.realityforge.braincheck:braincheck-core:jar:1.31.0 [compile]
#    +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
#    \- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile] REPLACED BY :jsinterop_annotations-j2cl (J2cl)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_java//java:defs.bzl", "java_import", "java_library", "java_plugin")
load("@com_google_j2cl//build_defs:rules.bzl", "j2cl_library")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "F445506843035D8F783895E9762A7FA9245FA5B5579EC3FFACDE2131787AD6DA"

def generate_workspace_rules():
    """
        Repository rules macro to load dependencies.

        Must be run from a WORKSPACE file.
    """

    http_file(
        name = "org_realityforge_akasha__akasha_java__0_06",
        downloaded_file_path = "org/realityforge/akasha/akasha-java/0.06/akasha-java-0.06.jar",
        sha256 = "6aea8ec9da4308dcbd64b7d8344f9d867dc68608d9f28d362af802d9ed05ae35",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/akasha/akasha-java/0.06/akasha-java-0.06.jar"],
    )

    http_file(
        name = "org_realityforge_akasha__akasha_java__0_06__sources",
        downloaded_file_path = "org/realityforge/akasha/akasha-java/0.06/akasha-java-0.06-sources.jar",
        sha256 = "7bcbfadbb33fd848969e86650fc9ea3eb8a59a44db9cd3fe432cae5aedeba45d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/akasha/akasha-java/0.06/akasha-java-0.06-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez_spytools__arez_spytools__0_126",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.126/arez-spytools-0.126.jar",
        sha256 = "67190068f8594472a1e499a6847e6ed543f7522f0ac4be989e32b534cf8b33b1",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.126/arez-spytools-0.126.jar"],
    )

    http_file(
        name = "org_realityforge_arez_spytools__arez_spytools__0_126__sources",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.126/arez-spytools-0.126-sources.jar",
        sha256 = "8d53775a941abe0ad735a6abd202238ed5a871fcf88d3a8819d469a18f84307f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.126/arez-spytools-0.126-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_196",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.196/arez-core-0.196.jar",
        sha256 = "f05086dbc933cd99a02584baf3f4aaf2a7e5eb26f9d042b7f394669379b89c83",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.196/arez-core-0.196.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_196__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.196/arez-core-0.196-sources.jar",
        sha256 = "ee25ea13862d146537fe2fe7590333930add1958bf9c54d0ad9746404d39eef1",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.196/arez-core-0.196-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_196",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.196/arez-processor-0.196.jar",
        sha256 = "998c1f92fc99efc8ddf71cc083db808c31aa02043f6a90c5b27389269381ed60",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.196/arez-processor-0.196.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_196__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.196/arez-processor-0.196-sources.jar",
        sha256 = "6b10a19e6d759709d16e5a5f48343bffc748185a97c69b61cb69cf0556745a59",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.196/arez-processor-0.196-sources.jar"],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_10",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar",
        sha256 = "dd2745c2c47ee2934ebf8549f33841180a0f2fbb8594938e8c7ad9b8282928e2",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck_core__1_31_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck-core/1.31.0/braincheck-core-1.31.0.jar",
        sha256 = "15971ffd219296dd0cf8dcebb3969600811b10d97886a1c30c2a4b757ee5b017",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck-core/1.31.0/braincheck-core-1.31.0.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck_core__1_31_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck-core/1.31.0/braincheck-core-1.31.0-sources.jar",
        sha256 = "98749b7cb2d31de6eee7317406374a68a34b633d463a4ae5b6a5ca579a97ce6b",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck-core/1.31.0/braincheck-core-1.31.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_grim__grim_annotations__0_05",
        downloaded_file_path = "org/realityforge/grim/grim-annotations/0.05/grim-annotations-0.05.jar",
        sha256 = "04e20e1d8bbe56e7d1b6912da5588263dd24202477541c0e343d9baf6e444f38",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/grim/grim-annotations/0.05/grim-annotations-0.05.jar"],
    )

    http_file(
        name = "org_realityforge_grim__grim_annotations__0_05__sources",
        downloaded_file_path = "org/realityforge/grim/grim-annotations/0.05/grim-annotations-0.05-sources.jar",
        sha256 = "007b02ec3cb743e6bc99da85ea37daef0a55fd67841a6610e867a7a5f8b4200f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/grim/grim-annotations/0.05/grim-annotations-0.05-sources.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1.jar",
        sha256 = "6adb7bcd07bdfc2e28d815dc7e0ce594181fe8a5a74d336cbf7cd7cfb283bb8d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1__sources",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1-sources.jar",
        sha256 = "049e2910100b7d27af24a821883f5ce94006955c7b08b9fb60cf57b67cd06061",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1-sources.jar"],
    )

    http_file(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.7.0/org.jetbrains.annotations-1.7.0.jar",
        sha256 = "b08893fbc83611432a8b5e692be6d513a7cad94d83d328d9deec5265917a7f81",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.7.0/org.jetbrains.annotations-1.7.0.jar"],
    )

    http_file(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0__sources",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.7.0/org.jetbrains.annotations-1.7.0-sources.jar",
        sha256 = "51b7fe38ce0c21d53eb236f911d109923459c5625c6e62a4d02b95c71bfaec22",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.7.0/org.jetbrains.annotations-1.7.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_181",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.181/react4j-core-0.181.jar",
        sha256 = "41fd730af38b5f4d0758e3f94860cd98a75111a67386034edee09432426250ca",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.181/react4j-core-0.181.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_181__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.181/react4j-core-0.181-sources.jar",
        sha256 = "6dea2cb9eb6e4b607c2b3e7e64cf190813992b209f012c93299356b1ca569e19",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.181/react4j-core-0.181-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_181",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.181/react4j-dom-0.181.jar",
        sha256 = "1bc66c247faa892ed49a319bf38dad4a6c5b10f90d192b6eac1356b759a97835",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.181/react4j-dom-0.181.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_181__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.181/react4j-dom-0.181-sources.jar",
        sha256 = "1d8f0843eafea2b1ab6967bbd7291793ee7ab7787955a944cdc7f56a23da8afc",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.181/react4j-dom-0.181-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_181",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.181/react4j-processor-0.181.jar",
        sha256 = "80993f415ceb74ca2b03db92ca9f7c6ef26ebfe4b07b229e5454528dbf6a3837",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.181/react4j-processor-0.181.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_181__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.181/react4j-processor-0.181-sources.jar",
        sha256 = "2cba6df7ca239722ad88b517afc01b17cf27d01949ad667eaa538f23a0813ffe",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.181/react4j-processor-0.181-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_18",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.18/sting-core-0.18.jar",
        sha256 = "131f5b22fb29e6bf0842c0e9c1d4cab8ba7d3f4e3fa641d8560faa58d56ceda2",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.18/sting-core-0.18.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_18__sources",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.18/sting-core-0.18-sources.jar",
        sha256 = "601bd9936d0e3e280888babb94bd6a2c33bb92d2107e9770bec2e6d77749dff1",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.18/sting-core-0.18-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_18",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.18/sting-processor-0.18.jar",
        sha256 = "39c4f0bf0c13ecb905191e65a8d06f9159961ef7620fbb41720f749e26e0cbd2",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.18/sting-processor-0.18.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_18__sources",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.18/sting-processor-0.18-sources.jar",
        sha256 = "a79d9af5a234ce90e0c5cb5d35d3e3e35607e81df3a6e7283a6099216d3601bb",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.18/sting-processor-0.18-sources.jar"],
    )

    http_file(
        name = "org_realityforge_zemeckis__zemeckis_core__0_10",
        downloaded_file_path = "org/realityforge/zemeckis/zemeckis-core/0.10/zemeckis-core-0.10.jar",
        sha256 = "aaa21f41427a9256e38bb80e10ec1951afe3847d6d810f372afea5938a948584",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/zemeckis/zemeckis-core/0.10/zemeckis-core-0.10.jar"],
    )

    http_file(
        name = "org_realityforge_zemeckis__zemeckis_core__0_10__sources",
        downloaded_file_path = "org/realityforge/zemeckis/zemeckis-core/0.10/zemeckis-core-0.10-sources.jar",
        sha256 = "98dd0a1e9af48e33f345499a37ce1067839286e9655e1674b60bb1ab4cb6af00",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/zemeckis/zemeckis-core/0.10/zemeckis-core-0.10-sources.jar"],
    )

def generate_targets():
    """
        Macro to define targets for dependencies.
    """

    native.genrule(
        name = "verify_config_sha256",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["command-output.txt"],
        cmd = "$(JAVA) -jar $(location :bazel_depgen) --config-file $(location //thirdparty:dependencies.yml) --quiet hash --verify-sha256 %s > \"$@\"" % (_CONFIG_SHA256),
        visibility = ["//visibility:private"],
    )

    native.genrule(
        name = "regenerate_depgen_extension_script",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["regenerate_depgen_extension_script.sh"],
        cmd = "echo \"$(JAVA) -jar $(location :bazel_depgen) --directory \\$$BUILD_WORKSPACE_DIRECTORY --config-file $(location //thirdparty:dependencies.yml) \$$@ generate \" > \"$@\"",
        visibility = ["//visibility:private"],
    )

    native.sh_binary(
        name = "regenerate_depgen_extension",
        srcs = ["regenerate_depgen_extension_script"],
        tags = [
            "local",
            "manual",
            "no-cache",
            "no-remote",
            "no-sandbox",
        ],
        data = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "akasha_java-j2cl",
        actual = ":org_realityforge_akasha__akasha_java__0_06-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_akasha__akasha_java__0_06-j2cl",
        srcs = ["@org_realityforge_akasha__akasha_java__0_06__sources//file"],
        visibility = ["//visibility:private"],
        deps = [
            ":gwt-javaemul-internal-annotations-j2cl",
            ":javax_annotation-j2cl",
            ":jsinterop_annotations-j2cl",
            ":jsinterop_base-j2cl",
            ":org_jetbrains_annotations-j2cl",
        ],
    )

    native.alias(
        name = "arez_spytools-j2cl",
        actual = ":org_realityforge_arez_spytools__arez_spytools__0_126-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_arez_spytools__arez_spytools__0_126-j2cl",
        srcs = ["@org_realityforge_arez_spytools__arez_spytools__0_126__sources//file"],
        visibility = ["//visibility:private"],
        deps = [
            ":akasha_java-j2cl",
            ":arez_core-j2cl",
            ":org_jetbrains_annotations-j2cl",
        ],
    )

    native.alias(
        name = "arez_core-j2cl",
        actual = ":org_realityforge_arez__arez_core__0_196-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_arez__arez_core__0_196-j2cl",
        srcs = ["@org_realityforge_arez__arez_core__0_196__sources//file"],
        visibility = ["//visibility:private"],
        deps = [
            ":braincheck_core-j2cl",
            ":grim_annotations-j2cl",
            ":javax_annotation-j2cl",
            ":jsinterop_annotations-j2cl",
            ":org_jetbrains_annotations-j2cl",
        ],
    )

    native.alias(
        name = "arez_processor",
        actual = ":org_realityforge_arez__arez_processor__0_196",
    )
    java_import(
        name = "org_realityforge_arez__arez_processor__0_196__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_196//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_196__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.196"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_arez__arez_processor__0_196__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_196__plugin_library"],
    )
    java_library(
        name = "org_realityforge_arez__arez_processor__0_196",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_196__arez_processor_arezprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "bazel_depgen",
        actual = ":org_realityforge_bazel_depgen__bazel_depgen__0_10",
    )
    java_import(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_10",
        jars = ["@org_realityforge_bazel_depgen__bazel_depgen__0_10//file"],
        tags = ["maven_coordinates=org.realityforge.bazel.depgen:bazel-depgen:0.10"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "braincheck_core-j2cl",
        actual = ":org_realityforge_braincheck__braincheck_core__1_31_0-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_braincheck__braincheck_core__1_31_0-j2cl",
        srcs = ["@org_realityforge_braincheck__braincheck_core__1_31_0__sources//file"],
        visibility = ["//visibility:private"],
        deps = [
            ":javax_annotation-j2cl",
            ":jsinterop_annotations-j2cl",
        ],
    )

    native.alias(
        name = "grim_annotations-j2cl",
        actual = ":org_realityforge_grim__grim_annotations__0_05-j2cl",
        visibility = ["//visibility:private"],
    )
    j2cl_library(
        name = "org_realityforge_grim__grim_annotations__0_05-j2cl",
        srcs = ["@org_realityforge_grim__grim_annotations__0_05__sources//file"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation-j2cl"],
    )

    native.alias(
        name = "javax_annotation-j2cl",
        actual = ":org_realityforge_javax_annotation__javax_annotation__1_0_1-j2cl",
    )
    java_import(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1__j2cl_library",
        jars = ["@org_realityforge_javax_annotation__javax_annotation__1_0_1//file"],
        srcjar = "@org_realityforge_javax_annotation__javax_annotation__1_0_1__sources//file",
        tags = ["maven_coordinates=org.realityforge.javax.annotation:javax.annotation:1.0.1"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    j2cl_library(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1-j2cl",
        srcs = ["org_realityforge_javax_annotation__javax_annotation__1_0_1__j2cl_library"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "org_jetbrains_annotations-j2cl",
        actual = ":org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0-j2cl",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0__j2cl_library",
        jars = ["@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0//file"],
        srcjar = "@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:1.7.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    j2cl_library(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0-j2cl",
        srcs = ["org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0__j2cl_library"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "react4j_core-j2cl",
        actual = ":org_realityforge_react4j__react4j_core__0_181-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_react4j__react4j_core__0_181-j2cl",
        srcs = ["@org_realityforge_react4j__react4j_core__0_181__sources//file"],
        visibility = ["//visibility:private"],
        deps = [
            ":akasha_java-j2cl",
            ":arez_core-j2cl",
            ":grim_annotations-j2cl",
            ":javax_annotation-j2cl",
            ":jsinterop_annotations-j2cl",
            ":jsinterop_base-j2cl",
            ":org_jetbrains_annotations-j2cl",
            ":zemeckis_core-j2cl",
        ],
    )

    native.alias(
        name = "react4j_dom-j2cl",
        actual = ":org_realityforge_react4j__react4j_dom__0_181-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_react4j__react4j_dom__0_181-j2cl",
        srcs = ["@org_realityforge_react4j__react4j_dom__0_181__sources//file"],
        visibility = ["//visibility:private"],
        deps = [":react4j_core-j2cl"],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_181",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_processor__0_181__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_181//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_181__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.181"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_181__react4j_processor_react4jprocessor__plugin",
        processor_class = "react4j.processor.React4jProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_181__plugin_library"],
    )
    java_library(
        name = "org_realityforge_react4j__react4j_processor__0_181",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_181__react4j_processor_react4jprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "sting_core-j2cl",
        actual = ":org_realityforge_sting__sting_core__0_18-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_sting__sting_core__0_18-j2cl",
        srcs = ["@org_realityforge_sting__sting_core__0_18__sources//file"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation-j2cl"],
    )

    native.alias(
        name = "sting_processor",
        actual = ":org_realityforge_sting__sting_processor__0_18",
    )
    java_import(
        name = "org_realityforge_sting__sting_processor__0_18__plugin_library",
        jars = ["@org_realityforge_sting__sting_processor__0_18//file"],
        srcjar = "@org_realityforge_sting__sting_processor__0_18__sources//file",
        tags = ["maven_coordinates=org.realityforge.sting:sting-processor:0.18"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_sting__sting_processor__0_18__sting_processor_stingprocessor__plugin",
        processor_class = "sting.processor.StingProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_sting__sting_processor__0_18__plugin_library"],
    )
    java_library(
        name = "org_realityforge_sting__sting_processor__0_18",
        exported_plugins = ["org_realityforge_sting__sting_processor__0_18__sting_processor_stingprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "zemeckis_core-j2cl",
        actual = ":org_realityforge_zemeckis__zemeckis_core__0_10-j2cl",
    )
    j2cl_library(
        name = "org_realityforge_zemeckis__zemeckis_core__0_10-j2cl",
        srcs = ["@org_realityforge_zemeckis__zemeckis_core__0_10__sources//file"],
        visibility = ["//visibility:private"],
        deps = [
            ":akasha_java-j2cl",
            ":braincheck_core-j2cl",
            ":grim_annotations-j2cl",
            ":javax_annotation-j2cl",
            ":jsinterop_annotations-j2cl",
            ":jsinterop_base-j2cl",
            ":org_jetbrains_annotations-j2cl",
        ],
    )
