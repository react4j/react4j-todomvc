# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.10

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
# +- org.realityforge.arez:arez-core:jar:0.147 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.25.0 [compile]
# |  \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# +- org.realityforge.arez:arez-processor:jar:0.147 [compile]
# +- org.realityforge.react4j:react4j-core:jar:0.133 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.25 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |  |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile]
# |  |     \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.25.0 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.146 [compile] (conflicts with 0.147)
# +- org.realityforge.react4j:react4j-dom:jar:0.133 [compile]
# |  +- org.realityforge.react4j:react4j-core:jar:0.133 [compile]
# |  \- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.25 [compile]
# |     +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |     +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile]
# |     +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.25 [compile]
# |     |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |     |  +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile]
# |     |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.25 [compile]
# |     \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.25 [compile]
# +- org.realityforge.react4j:react4j-processor:jar:0.133 [compile]
# \- org.realityforge.braincheck:braincheck:jar:1.25.0 [compile]
#    +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
#    +- org.glassfish:javax.json:jar:1.1 [compile, optional]
#    +- org.testng:testng:jar:6.11 [compile, optional]
#    \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_java//java:defs.bzl", "java_import", "java_library", "java_plugin")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "F424A80BE101BA2F4E05664E5404532F2E2DF536F352AD52024AFF26877C18C7"

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
        name = "org_glassfish__javax_json__1_1",
        downloaded_file_path = "org/glassfish/javax.json/1.1/javax.json-1.1.jar",
        sha256 = "4b1f21bc50b728aaae5f44ff550383182b58b67647362959e31004e4522ee24f",
        urls = ["https://repo.maven.apache.org/maven2/org/glassfish/javax.json/1.1/javax.json-1.1.jar"],
    )

    http_file(
        name = "org_glassfish__javax_json__1_1__sources",
        downloaded_file_path = "org/glassfish/javax.json/1.1/javax.json-1.1-sources.jar",
        sha256 = "2766ebfa95ca7499149d480d2c475874e2c573109a145d6f93b4495187d7469c",
        urls = ["https://repo.maven.apache.org/maven2/org/glassfish/javax.json/1.1/javax.json-1.1-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_147",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.147/arez-core-0.147.jar",
        sha256 = "afce27fb1c2c75eb7187243a9b4d8d2ee762ec259efab9a77cb1508c929c4676",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.147/arez-core-0.147.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-core/0.147/arez-core-0.147.jar",
        ],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_147__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.147/arez-core-0.147-sources.jar",
        sha256 = "a67f3b8854e43d6dcb75fc9584e8e2c3eae10514268d17fb20224b4395a0e838",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.147/arez-core-0.147-sources.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-core/0.147/arez-core-0.147-sources.jar",
        ],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_147",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.147/arez-processor-0.147.jar",
        sha256 = "2e8efc7ee8ed509320992aeb89dc1ad35310f18b7bde63f78f30d7934d4975b1",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.147/arez-processor-0.147.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-processor/0.147/arez-processor-0.147.jar",
        ],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_147__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.147/arez-processor-0.147-sources.jar",
        sha256 = "64d47df12d54af82f65b74d51d11b68231425003849d8ed477d4e721f1a6e0f9",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.147/arez-processor-0.147-sources.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-processor/0.147/arez-processor-0.147-sources.jar",
        ],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_10",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar",
        sha256 = "dd2745c2c47ee2934ebf8549f33841180a0f2fbb8594938e8c7ad9b8282928e2",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar",
        ],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_25_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0.jar",
        sha256 = "6712a0eb7e99da554d96968413819ad4fb42a6f3c5114d62c572941961c9a651",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0.jar",
        ],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_25_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0-sources.jar",
        sha256 = "6f6cac69c39b1744e7c9d56d8e4e07cd6802d76fa814acf920c343f7693f7038",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0-sources.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0-sources.jar",
        ],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_25",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.25/elemental2-core-2.25.jar",
        sha256 = "c701595cb222ed3d19a57b2a5902b5bf5180c06c3087f1aed5590dc1e484d721",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.25/elemental2-core-2.25.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_25__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.25/elemental2-core-2.25-sources.jar",
        sha256 = "d3cad5f6bd6a60bb5d904102d1ee19c2f7f7da43c27c16f2a4f0a20cdec2d1d7",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.25/elemental2-core-2.25-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_25",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.25/elemental2-dom-2.25.jar",
        sha256 = "cc37dfd364fcb3c0348e23da3749453de985be9dac3d5143a82c85f94639268c",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.25/elemental2-dom-2.25.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_25__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.25/elemental2-dom-2.25-sources.jar",
        sha256 = "d5bbfb66867d145ffd069c75f358cc9bd7553d07555ba34e0729972ae77fcaae",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.25/elemental2-dom-2.25-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_25",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.25/elemental2-promise-2.25.jar",
        sha256 = "b726600dd03b9abb6f3ba9996cb3ac4cd3b6adfa58be43b1e905b4e2fca33deb",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.25/elemental2-promise-2.25.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_25__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.25/elemental2-promise-2.25-sources.jar",
        sha256 = "f1daaf91423d411d728218b52ffe16eeec994bb2a616e85254ff48665a0dbe33",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.25/elemental2-promise-2.25-sources.jar"],
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
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1.jar",
        sha256 = "6adb7bcd07bdfc2e28d815dc7e0ce594181fe8a5a74d336cbf7cd7cfb283bb8d",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1.jar",
        ],
    )

    http_file(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1__sources",
        downloaded_file_path = "org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1-sources.jar",
        sha256 = "049e2910100b7d27af24a821883f5ce94006955c7b08b9fb60cf57b67cd06061",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1-sources.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/javax/annotation/javax.annotation/1.0.1/javax.annotation-1.0.1-sources.jar",
        ],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_133",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.133/react4j-core-0.133.jar",
        sha256 = "84ea4ae2838857cd458790620005bac9eb84fbcbb4781c0bf20c915fe87e67b5",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.133/react4j-core-0.133.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-core/0.133/react4j-core-0.133.jar",
        ],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_133__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.133/react4j-core-0.133-sources.jar",
        sha256 = "58a81f6675dec14241232a6d9cbee54dc9e8e6abe4e89948ec171402021538eb",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.133/react4j-core-0.133-sources.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-core/0.133/react4j-core-0.133-sources.jar",
        ],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_133",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.133/react4j-dom-0.133.jar",
        sha256 = "105e96e14cb7a094a6cabd3740185cc816c929855d0b10a2c9aad59e74299864",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.133/react4j-dom-0.133.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-dom/0.133/react4j-dom-0.133.jar",
        ],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_133__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.133/react4j-dom-0.133-sources.jar",
        sha256 = "00284a028fc3b174c6604004112fb948ed83173fa118f3a63e339dc5b07f456b",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.133/react4j-dom-0.133-sources.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-dom/0.133/react4j-dom-0.133-sources.jar",
        ],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_133",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.133/react4j-processor-0.133.jar",
        sha256 = "98b6c81ee2ac95a90647b94374ce3ab703e6490ef1b1fb57644059fd182ccd6f",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.133/react4j-processor-0.133.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-processor/0.133/react4j-processor-0.133.jar",
        ],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_133__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.133/react4j-processor-0.133-sources.jar",
        sha256 = "b58220cd98950354f2eee4bf1b226d9b3c4ce5873ef55e93ab3e20f4cc8250b6",
        urls = [
            "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.133/react4j-processor-0.133-sources.jar",
            "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-processor/0.133/react4j-processor-0.133-sources.jar",
        ],
    )

    http_file(
        name = "org_testng__testng__6_11",
        downloaded_file_path = "org/testng/testng/6.11/testng-6.11.jar",
        sha256 = "55d5897ac09339010eed2051124309a7127988d82ff0634228926d51da3540f6",
        urls = ["https://repo.maven.apache.org/maven2/org/testng/testng/6.11/testng-6.11.jar"],
    )

    http_file(
        name = "org_testng__testng__6_11__sources",
        downloaded_file_path = "org/testng/testng/6.11/testng-6.11-sources.jar",
        sha256 = "d105b25d3faf99b7221ceb21813d9f4ca20c77549873edcc6365cafc65d4763d",
        urls = ["https://repo.maven.apache.org/maven2/org/testng/testng/6.11/testng-6.11-sources.jar"],
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
        name = "gwt_user",
        actual = ":com_google_gwt__gwt_user__2_8_2",
    )
    java_import(
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
    java_import(
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
    java_import(
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
    java_import(
        name = "javax_validation__validation_api__1_0_0_ga",
        jars = ["@javax_validation__validation_api__1_0_0_ga//file"],
        srcjar = "@javax_validation__validation_api__1_0_0_ga__sources//file",
        tags = ["maven_coordinates=javax.validation:validation-api:1.0.0.GA"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "javax_json",
        actual = ":org_glassfish__javax_json__1_1",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_glassfish__javax_json__1_1",
        jars = ["@org_glassfish__javax_json__1_1//file"],
        srcjar = "@org_glassfish__javax_json__1_1__sources//file",
        tags = ["maven_coordinates=org.glassfish:javax.json:1.1"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "arez_core",
        actual = ":org_realityforge_arez__arez_core__0_147",
    )
    java_import(
        name = "org_realityforge_arez__arez_core__0_147",
        jars = ["@org_realityforge_arez__arez_core__0_147//file"],
        srcjar = "@org_realityforge_arez__arez_core__0_147__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.147"],
        visibility = ["//visibility:private"],
        deps = [
            ":braincheck",
            ":javax_annotation",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "arez_processor",
        actual = ":org_realityforge_arez__arez_processor__0_147",
    )
    java_import(
        name = "org_realityforge_arez__arez_processor__0_147__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_147//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_147__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.147"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_arez__arez_processor__0_147__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_147__plugin_library"],
    )
    java_library(
        name = "org_realityforge_arez__arez_processor__0_147",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_147__arez_processor_arezprocessor__plugin"],
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
        name = "braincheck",
        actual = ":org_realityforge_braincheck__braincheck__1_25_0",
    )
    java_import(
        name = "org_realityforge_braincheck__braincheck__1_25_0",
        jars = ["@org_realityforge_braincheck__braincheck__1_25_0//file"],
        srcjar = "@org_realityforge_braincheck__braincheck__1_25_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.braincheck:braincheck:1.25.0"],
        visibility = ["//visibility:private"],
        deps = [
            ":javax_annotation",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "elemental2_core",
        actual = ":org_realityforge_com_google_elemental2__elemental2_core__2_25",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_25",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_core__2_25//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_core__2_25__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-core:2.25"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":elemental2_promise",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "elemental2_dom",
        actual = ":org_realityforge_com_google_elemental2__elemental2_dom__2_25",
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_25",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_dom__2_25//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_dom__2_25__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-dom:2.25"],
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
        actual = ":org_realityforge_com_google_elemental2__elemental2_promise__2_25",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_25",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_promise__2_25//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_promise__2_25__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-promise:2.25"],
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
    java_import(
        name = "org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f",
        jars = ["@org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f//file"],
        srcjar = "@org_realityforge_com_google_jsinterop__base__1_0_0_b2_e6d791f__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.jsinterop:base:1.0.0-b2-e6d791f"],
        visibility = ["//visibility:private"],
        deps = [":jsinterop_annotations"],
    )

    native.alias(
        name = "javax_annotation",
        actual = ":org_realityforge_javax_annotation__javax_annotation__1_0_1",
    )
    java_import(
        name = "org_realityforge_javax_annotation__javax_annotation__1_0_1",
        jars = ["@org_realityforge_javax_annotation__javax_annotation__1_0_1//file"],
        srcjar = "@org_realityforge_javax_annotation__javax_annotation__1_0_1__sources//file",
        tags = ["maven_coordinates=org.realityforge.javax.annotation:javax.annotation:1.0.1"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "react4j_core",
        actual = ":org_realityforge_react4j__react4j_core__0_133",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_core__0_133",
        jars = ["@org_realityforge_react4j__react4j_core__0_133//file"],
        srcjar = "@org_realityforge_react4j__react4j_core__0_133__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.133"],
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
        actual = ":org_realityforge_react4j__react4j_dom__0_133",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_dom__0_133",
        jars = ["@org_realityforge_react4j__react4j_dom__0_133//file"],
        srcjar = "@org_realityforge_react4j__react4j_dom__0_133__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.133"],
        visibility = ["//visibility:private"],
        deps = [
            ":elemental2_dom",
            ":react4j_core",
        ],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_133",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_processor__0_133__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_133//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_133__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.133"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_133__react4j_processor_reactprocessor__plugin",
        processor_class = "react4j.processor.ReactProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_133__plugin_library"],
    )
    java_library(
        name = "org_realityforge_react4j__react4j_processor__0_133",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_133__react4j_processor_reactprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "testng",
        actual = ":org_testng__testng__6_11",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_testng__testng__6_11",
        jars = ["@org_testng__testng__6_11//file"],
        srcjar = "@org_testng__testng__6_11__sources//file",
        tags = ["maven_coordinates=org.testng:testng:6.11"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "sac",
        actual = ":org_w3c_css__sac__1_3",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_w3c_css__sac__1_3",
        jars = ["@org_w3c_css__sac__1_3//file"],
        srcjar = "@org_w3c_css__sac__1_3__sources//file",
        tags = ["maven_coordinates=org.w3c.css:sac:1.3"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
