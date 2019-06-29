# DO NOT EDIT: File is auto-generated from dependencies.yaml by https://github.com/realityforge/bazel-depgen version 0.01

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# +- com.google.gwt:gwt-user:jar:2.8.2 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:sources:1.0.2 [compile]
# |  +- javax.validation:validation-api:jar:1.0.0.GA [compile]
# |  +- javax.validation:validation-api:jar:sources:1.0.0.GA [compile]
# |  +- javax.servlet:javax.servlet-api:jar:3.1.0 [compile]
# |  \- org.w3c.css:sac:jar:1.3 [compile]
# +- org.realityforge.arez:arez-core:jar:0.138 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile]
# +- org.realityforge.arez:arez-processor:jar:0.138 [compile]
# +- org.realityforge.react4j:react4j-core:jar:0.129 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.24 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |  |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.16.0 [compile]
# |  |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile, optional]
# |  \- org.realityforge.arez:arez-core:jar:0.137 [compile] (conflicts with 0.138)
# +- org.realityforge.react4j:react4j-dom:jar:0.129 [compile]
# |  +- org.realityforge.react4j:react4j-core:jar:0.129 [compile]
# |  \- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.24 [compile]
# |     +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |     +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile]
# |     +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.24 [compile]
# |     |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |     |  +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile]
# |     |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.24 [compile]
# |     \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.24 [compile]
# \- org.realityforge.react4j:react4j-processor:jar:0.129 [compile]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "3C8483861E7CB955BE4947A121F9C9F62C7959C7434021E13D71E0184FA98135"

def generate_workspace_rules():
    """
        Repository rules macro to load dependencies.

        Must be run from a WORKSPACE file.
    """

    http_file(
        name = "com_google_gwt__gwt_user__2_8_2",
        downloaded_file_path = "com/google/gwt/gwt-user/2.8.2/gwt-user-2.8.2.jar",
        sha256 = "9f420f0d0c2f177d71cb1794b3be1418f9755f6e4181101af3951b8302b9556d",
        urls = ["https://repo.maven.apache.org/maven2/com/google/gwt/gwt-user/2.8.2/gwt-user-2.8.2.jar"],
    )

    http_file(
        name = "com_google_gwt__gwt_user__2_8_2__sources",
        downloaded_file_path = "com/google/gwt/gwt-user/2.8.2/gwt-user-2.8.2-sources.jar",
        sha256 = "cf5577fedfb4afee9246625e1ce9af8ab6de732c63426ade3f75a5b3fd26e4b1",
        urls = ["https://repo.maven.apache.org/maven2/com/google/gwt/gwt-user/2.8.2/gwt-user-2.8.2-sources.jar"],
    )

    http_file(
        name = "com_google_jsinterop__jsinterop_annotations__1_0_2",
        downloaded_file_path = "com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2.jar",
        sha256 = "fcaf44731f5b6a606fa428a6d1a9ede11dc628c6f7d0f91c235aa71e337bf014",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2.jar"],
    )

    http_file(
        name = "com_google_jsinterop__jsinterop_annotations__1_0_2__sources",
        downloaded_file_path = "com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2-sources.jar",
        sha256 = "9091354e2fccf3585fd0de6c5aac78418d84b15d59e5401cfb3c70ebf4950459",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2-sources.jar"],
    )

    http_file(
        name = "javax_servlet__javax_servlet_api__3_1_0",
        downloaded_file_path = "javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar",
        sha256 = "af456b2dd41c4e82cf54f3e743bc678973d9fe35bd4d3071fa05c7e5333b8482",
        urls = ["https://repo.maven.apache.org/maven2/javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar"],
    )

    http_file(
        name = "javax_servlet__javax_servlet_api__3_1_0__sources",
        downloaded_file_path = "javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0-sources.jar",
        sha256 = "5c6d640f01e8e7ffdba21b2b75c0f64f0c30fd1fc3372123750c034cb363012a",
        urls = ["https://repo.maven.apache.org/maven2/javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0-sources.jar"],
    )

    http_file(
        name = "javax_validation__validation_api__1_0_0_ga",
        downloaded_file_path = "javax/validation/validation-api/1.0.0.GA/validation-api-1.0.0.GA.jar",
        sha256 = "e459f313ebc6db2483f8ceaad39af07086361b474fa92e40f442e8de5d9895dc",
        urls = ["https://repo.maven.apache.org/maven2/javax/validation/validation-api/1.0.0.GA/validation-api-1.0.0.GA.jar"],
    )

    http_file(
        name = "javax_validation__validation_api__1_0_0_ga__sources",
        downloaded_file_path = "javax/validation/validation-api/1.0.0.GA/validation-api-1.0.0.GA-sources.jar",
        sha256 = "a394d52a9b7fe2bb14f0718d2b3c8308ffe8f37e911956012398d55c9f9f9b54",
        urls = ["https://repo.maven.apache.org/maven2/javax/validation/validation-api/1.0.0.GA/validation-api-1.0.0.GA-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_138",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.138/arez-core-0.138.jar",
        sha256 = "6c7aa63c1309902c9a1455ae33637e3d968930f2115d552d427d2d9b458e4847",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.138/arez-core-0.138.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_138__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.138/arez-core-0.138-sources.jar",
        sha256 = "e4db680c7b15a4099b6fbdb7acf1427a268b19cfb751aa404bd6ca2d112e73ac",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.138/arez-core-0.138-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_138",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.138/arez-processor-0.138.jar",
        sha256 = "6fc189cc3126744dedf92d97b308f9d81835fddd2b1b3838ad4f1edf33931224",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.138/arez-processor-0.138.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_138__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.138/arez-processor-0.138-sources.jar",
        sha256 = "6d3984310480425dfa48df7b3010dd2eb82e5362b5b9164c7ded222b49e5fd2b",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.138/arez-processor-0.138-sources.jar"],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_01",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.01/bazel-depgen-0.01-all.jar",
        sha256 = "dca94a1562cbcce49c0f5fd9e510792f022340b2d83b7c56899121149e2d6d5a",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.01/bazel-depgen-0.01-all.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_16_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0.jar",
        sha256 = "9370edd88e26d5442ca2a083c77fd71e6ea212bb1848c2a56ad1d921cae61dfc",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_16_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0-sources.jar",
        sha256 = "21884be11869f91f353c365896ddb1e265d3d792a364cb8753cd3b587a45ad39",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_24",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24.jar",
        sha256 = "6622ac035bfc2cdeff6689db11b85c72d12689e652a4649a3e384049367e2acf",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_24__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24-sources.jar",
        sha256 = "d3cad5f6bd6a60bb5d904102d1ee19c2f7f7da43c27c16f2a4f0a20cdec2d1d7",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.24/elemental2-core-2.24-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_24",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24.jar",
        sha256 = "1d285ba81f5d15b7b27bc25bc8a26a6d1faefa9e554281acdd08e31223c12c1b",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_24__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24-sources.jar",
        sha256 = "27b20f9729109760f284d9b5ed2dfa7cff956d07d03001a705910bed9f7b3613",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.24/elemental2-dom-2.24-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_24",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24.jar",
        sha256 = "e7055316c1474b749c5af451d18fc13ddde6f1455526dceca96e7988f22e8a14",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_24__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24-sources.jar",
        sha256 = "f1daaf91423d411d728218b52ffe16eeec994bb2a616e85254ff48665a0dbe33",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.24/elemental2-promise-2.24-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/base/1.0.0-b2-e6d791f/base-1.0.0-b2-e6d791f.jar",
        sha256 = "471323d6c94ac8616db1e8288ca24b74e6ca4341c1e24d2894e81005485efcbd",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/base/1.0.0-b2-e6d791f/base-1.0.0-b2-e6d791f.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f__sources",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/base/1.0.0-b2-e6d791f/base-1.0.0-b2-e6d791f-sources.jar",
        sha256 = "a883cd2cd25f46985d3b7a0f125040a37cb32a629963d2b8127d356d26d390e7",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/base/1.0.0-b2-e6d791f/base-1.0.0-b2-e6d791f-sources.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0.jar",
        sha256 = "da4e5e4543c3a68cb27ff7bdafe5ca62f0c2117f49b6564fa11d7843f34c575e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0.jar"],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0__sources",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0-sources.jar",
        sha256 = "f50fb17b33f6e9ba6ba396b66550aacce0ac47119c69b478de850baf46a42c3e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_129",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.129/react4j-core-0.129.jar",
        sha256 = "6c6d7361b5f73c55a41e13ad648a9d0fb21b65297b88ed729872fbc62fcd4bbe",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.129/react4j-core-0.129.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_129__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.129/react4j-core-0.129-sources.jar",
        sha256 = "c7e1a22d4d9bc00d6689bc21a6afd5d263051d0e478cb5119a3a06f8022c6800",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.129/react4j-core-0.129-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_129",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.129/react4j-dom-0.129.jar",
        sha256 = "88bfc5c508477b7d28b519af689894056a618013ba58d27bc96d9f93f8011a85",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.129/react4j-dom-0.129.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_129__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.129/react4j-dom-0.129-sources.jar",
        sha256 = "09239606867ffba61ec027933badbcc9da13305a11811f97c0a4f7556d18099a",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.129/react4j-dom-0.129-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_129",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.129/react4j-processor-0.129.jar",
        sha256 = "186d9f82244271405f4dcb9687016f9307cbcef4e2c8fe6f1a8c32126cd7e389",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.129/react4j-processor-0.129.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_129__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.129/react4j-processor-0.129-sources.jar",
        sha256 = "0f8cc901578cf43a11b6f8eb238fcfca84790381c477363da76456b7c721d019",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.129/react4j-processor-0.129-sources.jar"],
    )

    http_file(
        name = "org_w3c_css__sac__1_3",
        downloaded_file_path = "org/w3c/css/sac/1.3/sac-1.3.jar",
        sha256 = "003785669f921aafe4f137468dd20a01a36111e94fd7449f26c16e7924d82d23",
        urls = ["https://repo.maven.apache.org/maven2/org/w3c/css/sac/1.3/sac-1.3.jar"],
    )

    http_file(
        name = "org_w3c_css__sac__1_3__sources",
        downloaded_file_path = "org/w3c/css/sac/1.3/sac-1.3-sources.jar",
        sha256 = "9ca0ff97617e9fe28fcdcf60f48c6cc1125cdce451e1a797dbce3bb5d3fcc398",
        urls = ["https://repo.maven.apache.org/maven2/org/w3c/css/sac/1.3/sac-1.3-sources.jar"],
    )

def generate_targets():
    """
        Macro to define targets for dependencies.
    """

    native.genrule(
        name = "verify_config_sha256",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yaml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["command-output.txt"],
        cmd = "$(JAVA) -jar $(location :bazel_depgen) --config-file $(location //thirdparty:dependencies.yaml) --quiet hash --verify-sha256 %s > \"$@\"" % (_CONFIG_SHA256),
        visibility = ["//visibility:private"],
    )

    native.genrule(
        name = "regenerate_depgen_extension_script",
        srcs = [
            ":bazel_depgen",
            "//thirdparty:dependencies.yaml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        toolchains = ["@bazel_tools//tools/jdk:current_java_runtime"],
        outs = ["regenerate_depgen_extension_script.sh"],
        cmd = "echo \"$(JAVA) -jar $(location :bazel_depgen) --directory \\$$BUILD_WORKSPACE_DIRECTORY --config-file $(location //thirdparty:dependencies.yaml) --quiet generate \" > \"$@\"",
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
            "//thirdparty:dependencies.yaml",
            "@bazel_tools//tools/jdk:current_java_runtime",
        ],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "gwt_user",
        actual = ":com_google_gwt__gwt_user__2_8_2",
    )
    native.java_import(
        name = "com_google_gwt__gwt_user__2_8_2",
        jars = ["@com_google_gwt__gwt_user__2_8_2//file"],
        srcjar = "@com_google_gwt__gwt_user__2_8_2__sources//file",
        tags = ["maven_coordinates=com.google.gwt:gwt-user:2.8.2"],
        visibility = ["//visibility:private"],
        deps = [
            ":javax_servlet_api",
            ":jsinterop_annotations",
            ":sac",
            ":validation_api",
        ],
    )

    native.alias(
        name = "jsinterop_annotations",
        actual = ":com_google_jsinterop__jsinterop_annotations__1_0_2",
    )
    native.java_import(
        name = "com_google_jsinterop__jsinterop_annotations__1_0_2",
        jars = ["@com_google_jsinterop__jsinterop_annotations__1_0_2//file"],
        srcjar = "@com_google_jsinterop__jsinterop_annotations__1_0_2__sources//file",
        tags = ["maven_coordinates=com.google.jsinterop:jsinterop-annotations:1.0.2"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "javax_servlet_api",
        actual = ":javax_servlet__javax_servlet_api__3_1_0",
        visibility = ["//visibility:private"],
    )
    native.java_import(
        name = "javax_servlet__javax_servlet_api__3_1_0",
        jars = ["@javax_servlet__javax_servlet_api__3_1_0//file"],
        srcjar = "@javax_servlet__javax_servlet_api__3_1_0__sources//file",
        tags = ["maven_coordinates=javax.servlet:javax.servlet-api:3.1.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "validation_api",
        actual = ":javax_validation__validation_api__1_0_0_ga",
        visibility = ["//visibility:private"],
    )
    native.java_import(
        name = "javax_validation__validation_api__1_0_0_ga",
        jars = ["@javax_validation__validation_api__1_0_0_ga//file"],
        srcjar = "@javax_validation__validation_api__1_0_0_ga__sources//file",
        tags = ["maven_coordinates=javax.validation:validation-api:1.0.0.GA"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "arez_core",
        actual = ":org_realityforge_arez__arez_core__0_138",
    )
    native.java_import(
        name = "org_realityforge_arez__arez_core__0_138",
        jars = ["@org_realityforge_arez__arez_core__0_138//file"],
        srcjar = "@org_realityforge_arez__arez_core__0_138__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.138"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":javax_annotation",
        ],
    )

    native.alias(
        name = "arez_processor",
        actual = ":org_realityforge_arez__arez_processor__0_138",
    )
    native.java_import(
        name = "org_realityforge_arez__arez_processor__0_138__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_138//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_138__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.138"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    native.java_plugin(
        name = "org_realityforge_arez__arez_processor__0_138__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_138__plugin_library"],
    )
    native.java_library(
        name = "org_realityforge_arez__arez_processor__0_138",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_138__arez_processor_arezprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "bazel_depgen",
        actual = ":org_realityforge_bazel_depgen__bazel_depgen__0_01",
    )
    native.java_import(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_01",
        jars = ["@org_realityforge_bazel_depgen__bazel_depgen__0_01//file"],
        tags = ["maven_coordinates=org.realityforge.bazel.depgen:bazel-depgen:0.01"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "braincheck",
        actual = ":org_realityforge_braincheck__braincheck__1_16_0",
        visibility = ["//visibility:private"],
    )
    native.java_import(
        name = "org_realityforge_braincheck__braincheck__1_16_0",
        jars = ["@org_realityforge_braincheck__braincheck__1_16_0//file"],
        srcjar = "@org_realityforge_braincheck__braincheck__1_16_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.braincheck:braincheck:1.16.0"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation"],
    )

    native.alias(
        name = "elemental2_core",
        actual = ":org_realityforge_com_google_elemental2__elemental2_core__2_24",
        visibility = ["//visibility:private"],
    )
    native.java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_24",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_core__2_24//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_core__2_24__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-core:2.24"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":elemental2_promise",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "elemental2_dom",
        actual = ":org_realityforge_com_google_elemental2__elemental2_dom__2_24",
    )
    native.java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_24",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_dom__2_24//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_dom__2_24__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-dom:2.24"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":elemental2_core",
            ":elemental2_promise",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "elemental2_promise",
        actual = ":org_realityforge_com_google_elemental2__elemental2_promise__2_24",
        visibility = ["//visibility:private"],
    )
    native.java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_24",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_promise__2_24//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_promise__2_24__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-promise:2.24"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "base",
        actual = ":org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f",
    )
    native.java_import(
        name = "org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f",
        jars = ["@org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f//file"],
        srcjar = "@org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.jsinterop:base:1.0.0-b2-e6d791f"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "javax_annotation",
        actual = ":org_realityforge_javax_annotation__javax_annotation__1_0_0",
    )
    native.java_import(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_0",
        jars = ["@org_realityforge_javax_annotation__javax_annotation__1_0_0//file"],
        srcjar = "@org_realityforge_javax_annotation__javax_annotation__1_0_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.javax.annotation:javax.annotation:1.0.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "react4j_core",
        actual = ":org_realityforge_react4j__react4j_core__0_129",
    )
    native.java_import(
        name = "org_realityforge_react4j__react4j_core__0_129",
        jars = ["@org_realityforge_react4j__react4j_core__0_129//file"],
        srcjar = "@org_realityforge_react4j__react4j_core__0_129__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.129"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":braincheck",
            ":elemental2_promise",
            ":javax_annotation",
        ],
    )

    native.alias(
        name = "react4j_dom",
        actual = ":org_realityforge_react4j__react4j_dom__0_129",
    )
    native.java_import(
        name = "org_realityforge_react4j__react4j_dom__0_129",
        jars = ["@org_realityforge_react4j__react4j_dom__0_129//file"],
        srcjar = "@org_realityforge_react4j__react4j_dom__0_129__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.129"],
        visibility = ["//visibility:private"],
        deps = [
            ":elemental2_dom",
            ":react4j_core",
        ],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_129",
    )
    native.java_import(
        name = "org_realityforge_react4j__react4j_processor__0_129__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_129//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_129__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.129"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    native.java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_129__react4j_processor_reactprocessor__plugin",
        processor_class = "react4j.processor.ReactProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_129__plugin_library"],
    )
    native.java_library(
        name = "org_realityforge_react4j__react4j_processor__0_129",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_129__react4j_processor_reactprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "sac",
        actual = ":org_w3c_css__sac__1_3",
        visibility = ["//visibility:private"],
    )
    native.java_import(
        name = "org_w3c_css__sac__1_3",
        jars = ["@org_w3c_css__sac__1_3//file"],
        srcjar = "@org_w3c_css__sac__1_3__sources//file",
        tags = ["maven_coordinates=org.w3c.css:sac:1.3"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
