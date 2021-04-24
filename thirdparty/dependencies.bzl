# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.12

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# +- org.realityforge.arez:arez-core:jar:0.197 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.braincheck:braincheck-core:jar:1.31.0 [compile]
# |  \- org.realityforge.grim:grim-annotations:jar:0.05 [compile]
# |     \- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# +- org.realityforge.arez:arez-processor:jar:0.197 [compile]
# +- org.realityforge.arez.spytools:arez-spytools:jar:0.127 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- org.realityforge.braincheck:braincheck-core:jar:1.31.0 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] (conflicts with 2.0.0)
# |  +- org.realityforge.akasha:akasha-java:jar:0.06 [compile]
# |  |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]
# |  |  \- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.196 [compile] (conflicts with 0.197)
# +- org.realityforge.react4j:react4j-core:jar:0.182 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]
# |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.braincheck:braincheck-core:jar:1.31.0 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.05 [compile]
# |  +- org.realityforge.zemeckis:zemeckis-core:jar:0.11 [compile]
# |  +- org.realityforge.arez:arez-core:jar:0.197 [compile]
# |  +- org.realityforge.akasha:akasha-java:jar:0.10 [compile] (conflicts with 0.06)
# |  \- org.realityforge.javaemul.internal.annotations:javaemul.internal.annotations:jar:0.01 [compile]
# +- org.realityforge.react4j:react4j-dom:jar:0.182 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]
# |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.braincheck:braincheck-core:jar:1.31.0 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.05 [compile]
# |  +- org.realityforge.zemeckis:zemeckis-core:jar:0.11 [compile]
# |  +- org.realityforge.arez:arez-core:jar:0.197 [compile]
# |  +- org.realityforge.akasha:akasha-java:jar:0.10 [compile] (conflicts with 0.06)
# |  +- org.realityforge.javaemul.internal.annotations:javaemul.internal.annotations:jar:0.01 [compile]
# |  \- org.realityforge.react4j:react4j-core:jar:0.182 [compile]
# +- org.realityforge.react4j:react4j-processor:jar:0.182 [compile]
# +- org.realityforge.sting:sting-core:jar:0.19 [compile]
# |  \- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# +- org.realityforge.sting:sting-processor:jar:0.19 [compile]
# +- org.realityforge.zemeckis:zemeckis-core:jar:0.11 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]
# |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.7.0 [compile]
# |  +- org.realityforge.akasha:akasha-java:jar:0.10 [compile] (conflicts with 0.06)
# |  +- org.realityforge.braincheck:braincheck-core:jar:1.31.0 [compile]
# |  \- org.realityforge.grim:grim-annotations:jar:0.05 [compile]
# +- org.realityforge.braincheck:braincheck-jre:jar:1.31.0 [compile]
# \- org.realityforge.braincheck:braincheck-core:jar:1.31.0 [compile]
#    +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
#    \- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file", "http_archive")
load("@rules_java//java:defs.bzl", "java_import", "java_library", "java_plugin")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "F4229372776C430F315356C7BFAE947CDCA9E6F370DB3B88A1A32DF64FE5725F"

def generate_workspace_rules():
    """
        Repository rules macro to load dependencies.

        Must be run from a WORKSPACE file.
    """

    http_file(
        name = "com_google_jsinterop__base__1_0_0",
        downloaded_file_path = "com/google/jsinterop/base/1.0.0/base-1.0.0.jar",
        sha256 = "603635c26a384f601b19fa79c04208bd2f52da7af54650a3abced5b813ca4412",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/base/1.0.0/base-1.0.0.jar"],
    )

    http_file(
        name = "com_google_jsinterop__base__1_0_0__sources",
        downloaded_file_path = "com/google/jsinterop/base/1.0.0/base-1.0.0-sources.jar",
        sha256 = "733f02f18b225ffb24e927f23ca12ea91fec7b560665a8720a62ab95013cf5ea",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/base/1.0.0/base-1.0.0-sources.jar"],
    )

    http_file(
        name = "com_google_jsinterop__jsinterop_annotations__2_0_0",
        downloaded_file_path = "com/google/jsinterop/jsinterop-annotations/2.0.0/jsinterop-annotations-2.0.0.jar",
        sha256 = "ce01f48439240e46521b99cc4c889dcb6793f7a0b0a3e238a38359093f457b49",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/jsinterop-annotations/2.0.0/jsinterop-annotations-2.0.0.jar"],
    )

    http_file(
        name = "com_google_jsinterop__jsinterop_annotations__2_0_0__sources",
        downloaded_file_path = "com/google/jsinterop/jsinterop-annotations/2.0.0/jsinterop-annotations-2.0.0-sources.jar",
        sha256 = "27fd725393e1129dc9ca7c3712cb7ae9716ac613e82b00753139aa4b2325a67b",
        urls = ["https://repo.maven.apache.org/maven2/com/google/jsinterop/jsinterop-annotations/2.0.0/jsinterop-annotations-2.0.0-sources.jar"],
    )

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
        name = "org_realityforge_arez_spytools__arez_spytools__0_127",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.127/arez-spytools-0.127.jar",
        sha256 = "422d5ce5e2a7c9a626c3f10c9820a8cea980e3552ec64ac6712473fa42b81fce",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.127/arez-spytools-0.127.jar"],
    )

    http_file(
        name = "org_realityforge_arez_spytools__arez_spytools__0_127__sources",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.127/arez-spytools-0.127-sources.jar",
        sha256 = "ab281220db17247a25a8cde40f8013c4a539967afbaf983c0130fc33c25d0bbb",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.127/arez-spytools-0.127-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_197",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.197/arez-core-0.197.jar",
        sha256 = "2a2445586d91f8e34187de6ca7937deb2eec268fb696aca059df1d286e984d78",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.197/arez-core-0.197.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_197__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.197/arez-core-0.197-sources.jar",
        sha256 = "5ef77df917a88503f26ea60de5c28391bd3ce8ae8efde5fca8feb905d08e5d6e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.197/arez-core-0.197-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_197",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.197/arez-processor-0.197.jar",
        sha256 = "996c64a845d7890bd00e8f528b203096cdf89342573284dfe1414c3272d7cc15",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.197/arez-processor-0.197.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_197__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.197/arez-processor-0.197-sources.jar",
        sha256 = "e688ad548b4a3150ecf42d1117ca2caefb5ee61c2ec8775d9e4cb6fc72bb01d1",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.197/arez-processor-0.197-sources.jar"],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_12",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.12/bazel-depgen-0.12-all.jar",
        sha256 = "30f5232dd2ff5e997de699de91338317cb9f5041cf42bb5c21214071bfcb71e8",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.12/bazel-depgen-0.12-all.jar"],
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
        name = "org_realityforge_braincheck__braincheck_jre__1_31_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck-jre/1.31.0/braincheck-jre-1.31.0.jar",
        sha256 = "2e0821bcb4f0e44179a9b7b953e5b40ff78693470554101c5df05fc82ed72a36",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck-jre/1.31.0/braincheck-jre-1.31.0.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck_jre__1_31_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck-jre/1.31.0/braincheck-jre-1.31.0-sources.jar",
        sha256 = "b74c3f2044e10975500808638bef1ac531222b3258af67f8f7cfb2be6593c4cb",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck-jre/1.31.0/braincheck-jre-1.31.0-sources.jar"],
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
        name = "org_realityforge_javaemul_internal_annotations__javaemul_internal_annotations__0_01",
        downloaded_file_path = "org/realityforge/javaemul/internal/annotations/javaemul.internal.annotations/0.01/javaemul.internal.annotations-0.01.jar",
        sha256 = "220413df4d2e0e606d8d89d4c0694649cad68267815e0ed18c475cc9a4d628e5",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javaemul/internal/annotations/javaemul.internal.annotations/0.01/javaemul.internal.annotations-0.01.jar"],
    )

    http_file(
        name = "org_realityforge_javaemul_internal_annotations__javaemul_internal_annotations__0_01__sources",
        downloaded_file_path = "org/realityforge/javaemul/internal/annotations/javaemul.internal.annotations/0.01/javaemul.internal.annotations-0.01-sources.jar",
        sha256 = "0969e9b9a3fe398868826fab43754fed7817f98c168281c0f783465f798ec319",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/javaemul/internal/annotations/javaemul.internal.annotations/0.01/javaemul.internal.annotations-0.01-sources.jar"],
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
        name = "org_realityforge_react4j__react4j_core__0_182",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.182/react4j-core-0.182.jar",
        sha256 = "23f701bb9ed6e8d1dc49f67cb88e01251082b990d6f996b0e0003ef602f28588",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.182/react4j-core-0.182.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_182__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.182/react4j-core-0.182-sources.jar",
        sha256 = "707fa32c4ed4aca8cbb502bb426a06c3313f4e77f5ab9a3acb109131b9b832ab",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.182/react4j-core-0.182-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_182",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.182/react4j-dom-0.182.jar",
        sha256 = "beba10e636f96476206efff9bf31c2419de34fb966a184c4c7a7ef7ac68b0924",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.182/react4j-dom-0.182.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_182__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.182/react4j-dom-0.182-sources.jar",
        sha256 = "f9efe4bbd068eb253c7879f68340c5192927f2f7520ae574428e873cd8e8885c",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.182/react4j-dom-0.182-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_182",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.182/react4j-processor-0.182.jar",
        sha256 = "58d4b3c6dfca5c25508972d65a51b6d628c8afcf1796ccc428ca3a68ee2bf0be",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.182/react4j-processor-0.182.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_182__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.182/react4j-processor-0.182-sources.jar",
        sha256 = "90f723d3e6a6e4698ffe0393ab56c75f5a8c3a775d292378f22584b3461eafed",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.182/react4j-processor-0.182-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_19",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.19/sting-core-0.19.jar",
        sha256 = "4a128c3529bf814a1adeec1f0307dddfa0355ddd36ad9ec61dfa8453e700c713",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.19/sting-core-0.19.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_19__sources",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.19/sting-core-0.19-sources.jar",
        sha256 = "bad2f1caa2339dcf1a93e3846558d3650a05f4da495a005a290ad6d10b5e8d99",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.19/sting-core-0.19-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_19",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.19/sting-processor-0.19.jar",
        sha256 = "915b88d3b8b6577943ea5421e602436acae07e6f5220a684c361ff30d01db2a3",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.19/sting-processor-0.19.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_19__sources",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.19/sting-processor-0.19-sources.jar",
        sha256 = "fcc9a1842f45d644757f1b1fd8283e4141c775285a41cb97e51b8ca21fd73afa",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.19/sting-processor-0.19-sources.jar"],
    )

    http_file(
        name = "org_realityforge_zemeckis__zemeckis_core__0_11",
        downloaded_file_path = "org/realityforge/zemeckis/zemeckis-core/0.11/zemeckis-core-0.11.jar",
        sha256 = "470df45d7d85e2e62c136e46aad4545f29a0dee0f455f56db4eed86af3d09612",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/zemeckis/zemeckis-core/0.11/zemeckis-core-0.11.jar"],
    )

    http_file(
        name = "org_realityforge_zemeckis__zemeckis_core__0_11__sources",
        downloaded_file_path = "org/realityforge/zemeckis/zemeckis-core/0.11/zemeckis-core-0.11-sources.jar",
        sha256 = "a7a35e9094cc2d42e66d56ce689a356fa4eefa3f921fe89d7e86997f236a9b37",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/zemeckis/zemeckis-core/0.11/zemeckis-core-0.11-sources.jar"],
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
        name = "base",
        actual = ":com_google_jsinterop__base__1_0_0",
    )
    java_import(
        name = "com_google_jsinterop__base__1_0_0",
        jars = ["@com_google_jsinterop__base__1_0_0//file"],
        srcjar = "@com_google_jsinterop__base__1_0_0__sources//file",
        tags = ["maven_coordinates=com.google.jsinterop:base:1.0.0"],
        visibility = ["//visibility:private"],
        deps = [":jsinterop_annotations"],
    )

    native.alias(
        name = "jsinterop_annotations",
        actual = ":com_google_jsinterop__jsinterop_annotations__2_0_0",
    )
    java_import(
        name = "com_google_jsinterop__jsinterop_annotations__2_0_0",
        jars = ["@com_google_jsinterop__jsinterop_annotations__2_0_0//file"],
        srcjar = "@com_google_jsinterop__jsinterop_annotations__2_0_0__sources//file",
        tags = ["maven_coordinates=com.google.jsinterop:jsinterop-annotations:2.0.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "akasha_java",
        actual = ":org_realityforge_akasha__akasha_java__0_06",
    )
    java_import(
        name = "org_realityforge_akasha__akasha_java__0_06",
        jars = ["@org_realityforge_akasha__akasha_java__0_06//file"],
        srcjar = "@org_realityforge_akasha__akasha_java__0_06__sources//file",
        tags = ["maven_coordinates=org.realityforge.akasha:akasha-java:0.06"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_spytools",
        actual = ":org_realityforge_arez_spytools__arez_spytools__0_127",
    )
    java_import(
        name = "org_realityforge_arez_spytools__arez_spytools__0_127",
        jars = ["@org_realityforge_arez_spytools__arez_spytools__0_127//file"],
        srcjar = "@org_realityforge_arez_spytools__arez_spytools__0_127__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez.spytools:arez-spytools:0.127"],
        visibility = ["//visibility:private"],
        deps = [
            ":akasha_java",
            ":arez_core",
            ":base",
            ":braincheck_core",
            ":javax_annotation",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_core",
        actual = ":org_realityforge_arez__arez_core__0_197",
    )
    java_import(
        name = "org_realityforge_arez__arez_core__0_197",
        jars = ["@org_realityforge_arez__arez_core__0_197//file"],
        srcjar = "@org_realityforge_arez__arez_core__0_197__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.197"],
        visibility = ["//visibility:private"],
        deps = [
            ":braincheck_core",
            ":grim_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_processor",
        actual = ":org_realityforge_arez__arez_processor__0_197",
    )
    java_import(
        name = "org_realityforge_arez__arez_processor__0_197__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_197//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_197__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.197"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_arez__arez_processor__0_197__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_197__plugin_library"],
    )
    java_library(
        name = "org_realityforge_arez__arez_processor__0_197",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_197__arez_processor_arezprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "bazel_depgen",
        actual = ":org_realityforge_bazel_depgen__bazel_depgen__0_12",
    )
    java_import(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_12",
        jars = ["@org_realityforge_bazel_depgen__bazel_depgen__0_12//file"],
        tags = ["maven_coordinates=org.realityforge.bazel.depgen:bazel-depgen:0.12"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "braincheck_core",
        actual = ":org_realityforge_braincheck__braincheck_core__1_31_0",
    )
    java_import(
        name = "org_realityforge_braincheck__braincheck_core__1_31_0",
        jars = ["@org_realityforge_braincheck__braincheck_core__1_31_0//file"],
        srcjar = "@org_realityforge_braincheck__braincheck_core__1_31_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.braincheck:braincheck-core:1.31.0"],
        visibility = ["//visibility:private"],
        deps = [
            ":javax_annotation",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "braincheck_jre",
        actual = ":org_realityforge_braincheck__braincheck_jre__1_31_0",
    )
    java_import(
        name = "org_realityforge_braincheck__braincheck_jre__1_31_0",
        jars = ["@org_realityforge_braincheck__braincheck_jre__1_31_0//file"],
        srcjar = "@org_realityforge_braincheck__braincheck_jre__1_31_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.braincheck:braincheck-jre:1.31.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "grim_annotations",
        actual = ":org_realityforge_grim__grim_annotations__0_05",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_grim__grim_annotations__0_05",
        jars = ["@org_realityforge_grim__grim_annotations__0_05//file"],
        srcjar = "@org_realityforge_grim__grim_annotations__0_05__sources//file",
        tags = ["maven_coordinates=org.realityforge.grim:grim-annotations:0.05"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation"],
    )

    native.alias(
        name = "javaemul_internal_annotations",
        actual = ":org_realityforge_javaemul_internal_annotations__javaemul_internal_annotations__0_01",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_javaemul_internal_annotations__javaemul_internal_annotations__0_01",
        jars = ["@org_realityforge_javaemul_internal_annotations__javaemul_internal_annotations__0_01//file"],
        srcjar = "@org_realityforge_javaemul_internal_annotations__javaemul_internal_annotations__0_01__sources//file",
        tags = ["maven_coordinates=org.realityforge.javaemul.internal.annotations:javaemul.internal.annotations:0.01"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
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
        name = "org_jetbrains_annotations",
        actual = ":org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0",
        jars = ["@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0//file"],
        srcjar = "@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_7_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:1.7.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "react4j_core",
        actual = ":org_realityforge_react4j__react4j_core__0_182",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_core__0_182",
        jars = ["@org_realityforge_react4j__react4j_core__0_182//file"],
        srcjar = "@org_realityforge_react4j__react4j_core__0_182__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.182"],
        visibility = ["//visibility:private"],
        deps = [
            ":akasha_java",
            ":arez_core",
            ":base",
            ":braincheck_core",
            ":grim_annotations",
            ":javaemul_internal_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
            ":zemeckis_core",
        ],
    )

    native.alias(
        name = "react4j_dom",
        actual = ":org_realityforge_react4j__react4j_dom__0_182",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_dom__0_182",
        jars = ["@org_realityforge_react4j__react4j_dom__0_182//file"],
        srcjar = "@org_realityforge_react4j__react4j_dom__0_182__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.182"],
        visibility = ["//visibility:private"],
        deps = [
            ":akasha_java",
            ":arez_core",
            ":base",
            ":braincheck_core",
            ":grim_annotations",
            ":javaemul_internal_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
            ":react4j_core",
            ":zemeckis_core",
        ],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_182",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_processor__0_182__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_182//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_182__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.182"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_182__react4j_processor_react4jprocessor__plugin",
        processor_class = "react4j.processor.React4jProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_182__plugin_library"],
    )
    java_library(
        name = "org_realityforge_react4j__react4j_processor__0_182",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_182__react4j_processor_react4jprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "sting_core",
        actual = ":org_realityforge_sting__sting_core__0_19",
    )
    java_import(
        name = "org_realityforge_sting__sting_core__0_19",
        jars = ["@org_realityforge_sting__sting_core__0_19//file"],
        srcjar = "@org_realityforge_sting__sting_core__0_19__sources//file",
        tags = ["maven_coordinates=org.realityforge.sting:sting-core:0.19"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation"],
    )

    native.alias(
        name = "sting_processor",
        actual = ":org_realityforge_sting__sting_processor__0_19",
    )
    java_import(
        name = "org_realityforge_sting__sting_processor__0_19__plugin_library",
        jars = ["@org_realityforge_sting__sting_processor__0_19//file"],
        srcjar = "@org_realityforge_sting__sting_processor__0_19__sources//file",
        tags = ["maven_coordinates=org.realityforge.sting:sting-processor:0.19"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_sting__sting_processor__0_19__sting_processor_stingprocessor__plugin",
        processor_class = "sting.processor.StingProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_sting__sting_processor__0_19__plugin_library"],
    )
    java_library(
        name = "org_realityforge_sting__sting_processor__0_19",
        exported_plugins = ["org_realityforge_sting__sting_processor__0_19__sting_processor_stingprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "zemeckis_core",
        actual = ":org_realityforge_zemeckis__zemeckis_core__0_11",
    )
    java_import(
        name = "org_realityforge_zemeckis__zemeckis_core__0_11",
        jars = ["@org_realityforge_zemeckis__zemeckis_core__0_11//file"],
        srcjar = "@org_realityforge_zemeckis__zemeckis_core__0_11__sources//file",
        tags = ["maven_coordinates=org.realityforge.zemeckis:zemeckis-core:0.11"],
        visibility = ["//visibility:private"],
        deps = [
            ":akasha_java",
            ":base",
            ":braincheck_core",
            ":grim_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
        ],
    )
