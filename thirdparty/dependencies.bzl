# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.10

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# +- org.realityforge.arez:arez-core:jar:0.169 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.04 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.25.0 [compile]
# |  |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  |  +- org.glassfish:javax.json:jar:1.1 [compile, optional]
# |  |  \- org.testng:testng:jar:6.11 [compile, optional]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.4.0 [compile]
# |  \- org.realityforge.com.google.jsinterop:jsinterop-annotations:jar:2.8.2-v20191108 [compile]
# +- org.realityforge.arez:arez-processor:jar:0.169 [compile]
# +- org.realityforge.arez.spytools:arez-spytools:jar:0.96 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.4.0 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.27 [compile]
# |  |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.27 [compile]
# |  |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.169 [compile]
# +- org.realityforge.react4j:react4j-core:jar:0.151 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.27 [compile]
# |  |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  |  \- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  +- org.realityforge.com.google.jsinterop:jsinterop-annotations:jar:2.8.2-v20191108 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.25.0 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.04 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.168 [compile] (conflicts with 0.169)
# +- org.realityforge.react4j:react4j-dom:jar:0.151 [compile]
# |  +- org.realityforge.react4j:react4j-core:jar:0.151 [compile]
# |  \- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.27 [compile]
# +- org.realityforge.react4j:react4j-processor:jar:0.151 [compile]
# +- org.realityforge.sting:sting-core:jar:0.03 [compile]
# |  \- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# \- org.realityforge.sting:sting-processor:jar:0.03 [compile]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_java//java:defs.bzl", "java_import", "java_library", "java_plugin")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "9322EE8C63EAEC8EC2D361D9E31E7D976BB964D2235F55B1CFE8D44F329930DA"

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
        name = "org_realityforge_arez_spytools__arez_spytools__0_96",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.96/arez-spytools-0.96.jar",
        sha256 = "c8c1c5b1e7c8580537961da857419e455bced12690d43ef61e733069d7fec0ba",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.96/arez-spytools-0.96.jar"],
    )

    http_file(
        name = "org_realityforge_arez_spytools__arez_spytools__0_96__sources",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.96/arez-spytools-0.96-sources.jar",
        sha256 = "2e3074efdae634762bfc855732748568d6136178743428cc89fcc6b6f15f6485",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.96/arez-spytools-0.96-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_169",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.169/arez-core-0.169.jar",
        sha256 = "cf922185c0c25d1542c89cab37bbd66f4cb5caa78614913b78db87520a8e932c",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.169/arez-core-0.169.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_169__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.169/arez-core-0.169-sources.jar",
        sha256 = "df11a8008a2e2626eb17a0ff7d99e0f5874512458bb59b007d3d3e4f45e6bac3",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.169/arez-core-0.169-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_169",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.169/arez-processor-0.169.jar",
        sha256 = "739f1089e69a91e9a1226551410e61455d19784d3b0b9dda08d38fcb69b5ef3c",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.169/arez-processor-0.169.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_169__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.169/arez-processor-0.169-sources.jar",
        sha256 = "684587e6e15303d30a8879f6776cd59f627e6cce5b9e4fe458d90c611008193f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.169/arez-processor-0.169-sources.jar"],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_10",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar",
        sha256 = "dd2745c2c47ee2934ebf8549f33841180a0f2fbb8594938e8c7ad9b8282928e2",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_25_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0.jar",
        sha256 = "6712a0eb7e99da554d96968413819ad4fb42a6f3c5114d62c572941961c9a651",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_25_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0-sources.jar",
        sha256 = "6f6cac69c39b1744e7c9d56d8e4e07cd6802d76fa814acf920c343f7693f7038",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.25.0/braincheck-1.25.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_27",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27.jar",
        sha256 = "10c30b2dd96db6e6d23a9e072c786443090642066c378bd3f0727af65173ec4e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_27__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27-sources.jar",
        sha256 = "9c5b918dcf30dd47eb43027401c48b5d435bec11d7d55403773bdf8f2bb05367",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.27/elemental2-core-2.27-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_27",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27.jar",
        sha256 = "cbd28dea509ba60388cb19f9608542eb9001eecf1300deb6654e96752a1d541f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_27__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27-sources.jar",
        sha256 = "938d307406faa4cf2ac258e7beb8db6bb490f7a677ae168e8bdaf050c2828cc1",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.27/elemental2-dom-2.27-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_27",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27.jar",
        sha256 = "fe273ac806dcc8acea7743366cdf7885c8e3dddbab080450386a3f3b78416a92",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_27__sources",
        downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27-sources.jar",
        sha256 = "f1daaf91423d411d728218b52ffe16eeec994bb2a616e85254ff48665a0dbe33",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.27/elemental2-promise-2.27-sources.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108.jar",
        sha256 = "2e90ea0a2a124cf140badc70e9d3069f4a6d77af9b866deb68879d4c5a720821",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108.jar"],
    )

    http_file(
        name = "org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108__sources",
        downloaded_file_path = "org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108-sources.jar",
        sha256 = "1d4200db849cf621a30aa948b8f269841d7a24f0a8492ae7c81ecd756aebac1d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/jsinterop-annotations/2.8.2-v20191108/jsinterop-annotations-2.8.2-v20191108-sources.jar"],
    )

    http_file(
        name = "org_realityforge_grim__grim_annotations__0_04",
        downloaded_file_path = "org/realityforge/grim/grim-annotations/0.04/grim-annotations-0.04.jar",
        sha256 = "42edd33458d2c52e04be757faf43030f11cdbd38afff410bf4f297a47fe116b2",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/grim/grim-annotations/0.04/grim-annotations-0.04.jar"],
    )

    http_file(
        name = "org_realityforge_grim__grim_annotations__0_04__sources",
        downloaded_file_path = "org/realityforge/grim/grim-annotations/0.04/grim-annotations-0.04-sources.jar",
        sha256 = "6bd6410941648ce7890d1bfc488f7e85104393b3c66870cfa6416b4e47dbb554",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/grim/grim-annotations/0.04/grim-annotations-0.04-sources.jar"],
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
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_4_0",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.4.0/org.jetbrains.annotations-1.4.0.jar",
        sha256 = "cf07e2be63f82cea3fe2ee86f360e397baf419bc4aa2eab4eb43edfd8486c489",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.4.0/org.jetbrains.annotations-1.4.0.jar"],
    )

    http_file(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_4_0__sources",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.4.0/org.jetbrains.annotations-1.4.0-sources.jar",
        sha256 = "76b37e0175c3031fce39f2b9738556176d46c7ed9de259eecefa006df5272904",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.4.0/org.jetbrains.annotations-1.4.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_151",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.151/react4j-core-0.151.jar",
        sha256 = "0341eb027f8d11766b1e4df17e28aab4edb4fece32d7b9afeaf20d00e3e1b00a",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.151/react4j-core-0.151.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_151__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.151/react4j-core-0.151-sources.jar",
        sha256 = "895690b3d2a1766b97d90c96fb8d819f9c5110a3e6865dc0e2b0354cda2b9284",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.151/react4j-core-0.151-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_151",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.151/react4j-dom-0.151.jar",
        sha256 = "801f4c549057ef1694103c172f00ddb004a1288d0f02c9a8859a4ab307525671",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.151/react4j-dom-0.151.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_151__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.151/react4j-dom-0.151-sources.jar",
        sha256 = "c4aef00a2c34140ce6c574b1d3989d80268f9cd785e80b7a661fd7c73fbf3bd4",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.151/react4j-dom-0.151-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_151",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.151/react4j-processor-0.151.jar",
        sha256 = "e04bd471f1ecc3d42f225dca516f8bfa74e741f55c16203bd249551e099b8371",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.151/react4j-processor-0.151.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_151__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.151/react4j-processor-0.151-sources.jar",
        sha256 = "da9cfa869fbbad32fea1849d9b7282310195b8f69560aab5b51164aacd86026e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.151/react4j-processor-0.151-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_03",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.03/sting-core-0.03.jar",
        sha256 = "9b6349ea37dc9964a4f79e30661776f1533cdd199b2845043e1b81e37ee7e6dd",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.03/sting-core-0.03.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_03__sources",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.03/sting-core-0.03-sources.jar",
        sha256 = "0a634dce313a1a1b6fe142f3db10f889d3c16d8a9613eb406968e15508008d85",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.03/sting-core-0.03-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_03",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.03/sting-processor-0.03.jar",
        sha256 = "a0a6af8fcd026ed20c36db8e590a3ec9c87a600f644def0291c1ef299d2f4b4b",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.03/sting-processor-0.03.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_03__sources",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.03/sting-processor-0.03-sources.jar",
        sha256 = "da39875b63110cd53e87d8e3eab260858778a65e65a48cb4416f403e3b6accde",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.03/sting-processor-0.03-sources.jar"],
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
        name = "arez_spytools",
        actual = ":org_realityforge_arez_spytools__arez_spytools__0_96",
    )
    java_import(
        name = "org_realityforge_arez_spytools__arez_spytools__0_96",
        jars = ["@org_realityforge_arez_spytools__arez_spytools__0_96//file"],
        srcjar = "@org_realityforge_arez_spytools__arez_spytools__0_96__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez.spytools:arez-spytools:0.96"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":elemental2_dom",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_core",
        actual = ":org_realityforge_arez__arez_core__0_169",
    )
    java_import(
        name = "org_realityforge_arez__arez_core__0_169",
        jars = ["@org_realityforge_arez__arez_core__0_169//file"],
        srcjar = "@org_realityforge_arez__arez_core__0_169__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.169"],
        visibility = ["//visibility:private"],
        deps = [
            ":braincheck",
            ":grim_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_processor",
        actual = ":org_realityforge_arez__arez_processor__0_169",
    )
    java_import(
        name = "org_realityforge_arez__arez_processor__0_169__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_169//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_169__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.169"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_arez__arez_processor__0_169__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_169__plugin_library"],
    )
    java_library(
        name = "org_realityforge_arez__arez_processor__0_169",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_169__arez_processor_arezprocessor__plugin"],
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
        deps = [":javax_annotation"],
    )

    native.alias(
        name = "elemental2_core",
        actual = ":org_realityforge_com_google_elemental2__elemental2_core__2_27",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_core__2_27",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_core__2_27//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_core__2_27__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-core:2.27"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":elemental2_promise",
        ],
    )

    native.alias(
        name = "elemental2_dom",
        actual = ":org_realityforge_com_google_elemental2__elemental2_dom__2_27",
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_dom__2_27",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_dom__2_27//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_dom__2_27__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-dom:2.27"],
        visibility = ["//visibility:private"],
        deps = [
            ":base",
            ":elemental2_core",
            ":elemental2_promise",
        ],
    )

    native.alias(
        name = "elemental2_promise",
        actual = ":org_realityforge_com_google_elemental2__elemental2_promise__2_27",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_com_google_elemental2__elemental2_promise__2_27",
        jars = ["@org_realityforge_com_google_elemental2__elemental2_promise__2_27//file"],
        srcjar = "@org_realityforge_com_google_elemental2__elemental2_promise__2_27__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-promise:2.27"],
        visibility = ["//visibility:private"],
        deps = [":base"],
    )

    native.alias(
        name = "jsinterop_annotations",
        actual = ":org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108",
    )
    java_import(
        name = "org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108",
        jars = ["@org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108//file"],
        srcjar = "@org_realityforge_com_google_jsinterop__jsinterop_annotations__2_8_2_v20191108__sources//file",
        tags = ["maven_coordinates=org.realityforge.com.google.jsinterop:jsinterop-annotations:2.8.2-v20191108"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "grim_annotations",
        actual = ":org_realityforge_grim__grim_annotations__0_04",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_grim__grim_annotations__0_04",
        jars = ["@org_realityforge_grim__grim_annotations__0_04//file"],
        srcjar = "@org_realityforge_grim__grim_annotations__0_04__sources//file",
        tags = ["maven_coordinates=org.realityforge.grim:grim-annotations:0.04"],
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
        actual = ":org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_4_0",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_4_0",
        jars = ["@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_4_0//file"],
        srcjar = "@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_4_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:1.4.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "react4j_core",
        actual = ":org_realityforge_react4j__react4j_core__0_151",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_core__0_151",
        jars = ["@org_realityforge_react4j__react4j_core__0_151//file"],
        srcjar = "@org_realityforge_react4j__react4j_core__0_151__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.151"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":braincheck",
            ":elemental2_core",
            ":elemental2_promise",
            ":grim_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "react4j_dom",
        actual = ":org_realityforge_react4j__react4j_dom__0_151",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_dom__0_151",
        jars = ["@org_realityforge_react4j__react4j_dom__0_151//file"],
        srcjar = "@org_realityforge_react4j__react4j_dom__0_151__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.151"],
        visibility = ["//visibility:private"],
        deps = [
            ":elemental2_dom",
            ":react4j_core",
        ],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_151",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_processor__0_151__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_151//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_151__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.151"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_151__react4j_processor_react4jprocessor__plugin",
        processor_class = "react4j.processor.React4jProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_151__plugin_library"],
    )
    java_library(
        name = "org_realityforge_react4j__react4j_processor__0_151",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_151__react4j_processor_react4jprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "sting_core",
        actual = ":org_realityforge_sting__sting_core__0_03",
    )
    java_import(
        name = "org_realityforge_sting__sting_core__0_03",
        jars = ["@org_realityforge_sting__sting_core__0_03//file"],
        srcjar = "@org_realityforge_sting__sting_core__0_03__sources//file",
        tags = ["maven_coordinates=org.realityforge.sting:sting-core:0.03"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation"],
    )

    native.alias(
        name = "sting_processor",
        actual = ":org_realityforge_sting__sting_processor__0_03",
    )
    java_import(
        name = "org_realityforge_sting__sting_processor__0_03__plugin_library",
        jars = ["@org_realityforge_sting__sting_processor__0_03//file"],
        srcjar = "@org_realityforge_sting__sting_processor__0_03__sources//file",
        tags = ["maven_coordinates=org.realityforge.sting:sting-processor:0.03"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_sting__sting_processor__0_03__sting_processor_stingprocessor__plugin",
        processor_class = "sting.processor.StingProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_sting__sting_processor__0_03__plugin_library"],
    )
    java_library(
        name = "org_realityforge_sting__sting_processor__0_03",
        exported_plugins = ["org_realityforge_sting__sting_processor__0_03__sting_processor_stingprocessor__plugin"],
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
