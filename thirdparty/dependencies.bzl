# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.10

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# +- org.realityforge.arez:arez-core:jar:0.189 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.5.0 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.29.0 [compile]
# |  \- org.realityforge.grim:grim-annotations:jar:0.04 [compile]
# +- org.realityforge.arez:arez-processor:jar:0.189 [compile]
# +- org.realityforge.arez.spytools:arez-spytools:jar:0.110 [compile]
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.5.0 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.27 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] (conflicts with 2.0.0)
# |  |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.27 [compile]
# |  |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.183 [compile] (conflicts with 0.189)
# +- org.realityforge.react4j:react4j-core:jar:0.174 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# |  +- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]
# |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] (conflicts with 2.0.0)
# |  +- org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:jar:1.5.0 [compile]
# |  +- org.realityforge.braincheck:braincheck:jar:1.29.0 [compile]
# |  +- org.realityforge.grim:grim-annotations:jar:0.04 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] (conflicts with 2.0.0)
# |  |  \- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.27 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile] (conflicts with 2.0.0)
# |  |  +- com.google.jsinterop:base:jar:1.0.0 [compile]
# |  |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.27 [compile]
# |  \- org.realityforge.arez:arez-core:jar:0.188 [compile] (conflicts with 0.189)
# +- org.realityforge.react4j:react4j-dom:jar:0.174 [compile]
# |  +- org.realityforge.react4j:react4j-core:jar:0.174 [compile]
# |  \- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.27 [compile]
# +- org.realityforge.react4j:react4j-processor:jar:0.174 [compile]
# +- org.realityforge.sting:sting-core:jar:0.16 [compile]
# |  \- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
# +- org.realityforge.sting:sting-processor:jar:0.16 [compile]
# \- org.realityforge.braincheck:braincheck:jar:1.29.0 [compile]
#    +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.1 [compile]
#    +- org.glassfish:javax.json:jar:1.1 [compile, optional]
#    +- org.testng:testng:jar:6.11 [compile, optional]
#    \- com.google.jsinterop:jsinterop-annotations:jar:2.0.0 [compile]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_java//java:defs.bzl", "java_import", "java_library", "java_plugin")

# SHA256 of the configuration content that generated this file
_CONFIG_SHA256 = "05FB1E1E3CEA1E496BAFCA9AD7941C48D380AD04F84A6D5123CEC644A3035875"

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
        name = "org_realityforge_arez_spytools__arez_spytools__0_110",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.110/arez-spytools-0.110.jar",
        sha256 = "021fc0d51afd632dbe78ef3fe13e7d416e8fdd45ece1ca23ae43147aa7218337",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.110/arez-spytools-0.110.jar"],
    )

    http_file(
        name = "org_realityforge_arez_spytools__arez_spytools__0_110__sources",
        downloaded_file_path = "org/realityforge/arez/spytools/arez-spytools/0.110/arez-spytools-0.110-sources.jar",
        sha256 = "72bd0aa908f6c089c2594966a6ee66043b84471bfb623c2be3f5c176ac864025",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/spytools/arez-spytools/0.110/arez-spytools-0.110-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_189",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.189/arez-core-0.189.jar",
        sha256 = "35ad4e27c6228ab522adda63964d93294fd2c5095db71e07b887ec251ac61474",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.189/arez-core-0.189.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_core__0_189__sources",
        downloaded_file_path = "org/realityforge/arez/arez-core/0.189/arez-core-0.189-sources.jar",
        sha256 = "50f8f6b77fd0b3079eda4b51ee12cc0e3aa6c6bd2a18aec83dd9f14d5a788621",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.189/arez-core-0.189-sources.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_189",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.189/arez-processor-0.189.jar",
        sha256 = "f51c649c730083b7399c4e6099883f33fba52d918e651f2b0b2dbe26ae9e3055",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.189/arez-processor-0.189.jar"],
    )

    http_file(
        name = "org_realityforge_arez__arez_processor__0_189__sources",
        downloaded_file_path = "org/realityforge/arez/arez-processor/0.189/arez-processor-0.189-sources.jar",
        sha256 = "fc5e3cf6a8a94bf12aad25d7d092dc7c760973cc3406fd8a758aa8801c0312d9",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.189/arez-processor-0.189-sources.jar"],
    )

    http_file(
        name = "org_realityforge_bazel_depgen__bazel_depgen__0_10",
        downloaded_file_path = "org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar",
        sha256 = "dd2745c2c47ee2934ebf8549f33841180a0f2fbb8594938e8c7ad9b8282928e2",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/bazel/depgen/bazel-depgen/0.10/bazel-depgen-0.10-all.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_29_0",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.29.0/braincheck-1.29.0.jar",
        sha256 = "0c360db375f559629c7742d9ef3e1bcd10c0ceef7edd10030088e6ac07168b72",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.29.0/braincheck-1.29.0.jar"],
    )

    http_file(
        name = "org_realityforge_braincheck__braincheck__1_29_0__sources",
        downloaded_file_path = "org/realityforge/braincheck/braincheck/1.29.0/braincheck-1.29.0-sources.jar",
        sha256 = "58c1ae53336255ef8dd34a8dc22f35dbd16cb7e8c397aa1e0065200edeb48c94",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.29.0/braincheck-1.29.0-sources.jar"],
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
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_5_0",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.5.0/org.jetbrains.annotations-1.5.0.jar",
        sha256 = "90fcaec5065bf32282b12b4187219ddcc1bfe4cdb2e65de3231fdd5d0d346e8a",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.5.0/org.jetbrains.annotations-1.5.0.jar"],
    )

    http_file(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_5_0__sources",
        downloaded_file_path = "org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.5.0/org.jetbrains.annotations-1.5.0-sources.jar",
        sha256 = "9c9226cc80fcb898409c388ec69f392a7eedcb7a18ae02d812f11cd56f371f42",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.5.0/org.jetbrains.annotations-1.5.0-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_174",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.174/react4j-core-0.174.jar",
        sha256 = "dbb1c053b4e51d8ab9b7496a3c6d4901e79f22a2bffbfcf359abd0b1e88d7b8e",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.174/react4j-core-0.174.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_core__0_174__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-core/0.174/react4j-core-0.174-sources.jar",
        sha256 = "0a590bd41115bfa162edbaad36f6ecafaaa9cc7974a83fbea1114f6bf396702c",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.174/react4j-core-0.174-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_174",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.174/react4j-dom-0.174.jar",
        sha256 = "95b0ea918132f10c2d16e719aeed5ab59365b1eae3efb7abe6a6dc312cef8755",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.174/react4j-dom-0.174.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_dom__0_174__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.174/react4j-dom-0.174-sources.jar",
        sha256 = "f7127f31da37131fc49fc3002f9ec45fe45445243bb6b594278dd08ac7b18e57",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.174/react4j-dom-0.174-sources.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_174",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.174/react4j-processor-0.174.jar",
        sha256 = "df98940f91ae0f98eebac22283f4279d582cea799dfa4f2e76425ceb3f1a4242",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.174/react4j-processor-0.174.jar"],
    )

    http_file(
        name = "org_realityforge_react4j__react4j_processor__0_174__sources",
        downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.174/react4j-processor-0.174-sources.jar",
        sha256 = "4cdc7ea290707e4554a4e3c9a1d127969a890aba8622673c583b3ebdb074d94f",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.174/react4j-processor-0.174-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_16",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.16/sting-core-0.16.jar",
        sha256 = "a43cc44b54c46c0178e032ad2f56e78153f52b26ed829e0da0e3867713ec94ee",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.16/sting-core-0.16.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_core__0_16__sources",
        downloaded_file_path = "org/realityforge/sting/sting-core/0.16/sting-core-0.16-sources.jar",
        sha256 = "5f6456478486680420c6c9a6b4a82b1fb1ef92dbc1101c661c5a00b1034a1473",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-core/0.16/sting-core-0.16-sources.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_16",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.16/sting-processor-0.16.jar",
        sha256 = "978d4ba3fa4203e60bcffd761dedf63cf7bcf6b405c053459dadc0fe99dd7e83",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.16/sting-processor-0.16.jar"],
    )

    http_file(
        name = "org_realityforge_sting__sting_processor__0_16__sources",
        downloaded_file_path = "org/realityforge/sting/sting-processor/0.16/sting-processor-0.16-sources.jar",
        sha256 = "3e515fcd4f7b50c3b89d1461391dd5a8da324e79bba639cf14917aff9c3d194d",
        urls = ["https://repo.maven.apache.org/maven2/org/realityforge/sting/sting-processor/0.16/sting-processor-0.16-sources.jar"],
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
        actual = ":org_realityforge_arez_spytools__arez_spytools__0_110",
    )
    java_import(
        name = "org_realityforge_arez_spytools__arez_spytools__0_110",
        jars = ["@org_realityforge_arez_spytools__arez_spytools__0_110//file"],
        srcjar = "@org_realityforge_arez_spytools__arez_spytools__0_110__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez.spytools:arez-spytools:0.110"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":elemental2_dom",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "arez_core",
        actual = ":org_realityforge_arez__arez_core__0_189",
    )
    java_import(
        name = "org_realityforge_arez__arez_core__0_189",
        jars = ["@org_realityforge_arez__arez_core__0_189//file"],
        srcjar = "@org_realityforge_arez__arez_core__0_189__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.189"],
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
        actual = ":org_realityforge_arez__arez_processor__0_189",
    )
    java_import(
        name = "org_realityforge_arez__arez_processor__0_189__plugin_library",
        jars = ["@org_realityforge_arez__arez_processor__0_189//file"],
        srcjar = "@org_realityforge_arez__arez_processor__0_189__sources//file",
        tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.189"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_arez__arez_processor__0_189__arez_processor_arezprocessor__plugin",
        processor_class = "arez.processor.ArezProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_arez__arez_processor__0_189__plugin_library"],
    )
    java_library(
        name = "org_realityforge_arez__arez_processor__0_189",
        exported_plugins = ["org_realityforge_arez__arez_processor__0_189__arez_processor_arezprocessor__plugin"],
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
        actual = ":org_realityforge_braincheck__braincheck__1_29_0",
    )
    java_import(
        name = "org_realityforge_braincheck__braincheck__1_29_0",
        jars = ["@org_realityforge_braincheck__braincheck__1_29_0//file"],
        srcjar = "@org_realityforge_braincheck__braincheck__1_29_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.braincheck:braincheck:1.29.0"],
        visibility = ["//visibility:private"],
        deps = [
            ":javax_annotation",
            ":jsinterop_annotations",
        ],
    )

    native.alias(
        name = "elemental2_core",
        actual = ":org_realityforge_com_google_elemental2__elemental2_core__2_27",
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
            ":jsinterop_annotations",
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
            ":jsinterop_annotations",
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
        deps = [
            ":base",
            ":jsinterop_annotations",
        ],
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
        actual = ":org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_5_0",
        visibility = ["//visibility:private"],
    )
    java_import(
        name = "org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_5_0",
        jars = ["@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_5_0//file"],
        srcjar = "@org_realityforge_org_jetbrains_annotations__org_jetbrains_annotations__1_5_0__sources//file",
        tags = ["maven_coordinates=org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:1.5.0"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )

    native.alias(
        name = "react4j_core",
        actual = ":org_realityforge_react4j__react4j_core__0_174",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_core__0_174",
        jars = ["@org_realityforge_react4j__react4j_core__0_174//file"],
        srcjar = "@org_realityforge_react4j__react4j_core__0_174__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.174"],
        visibility = ["//visibility:private"],
        deps = [
            ":arez_core",
            ":base",
            ":braincheck",
            ":elemental2_core",
            ":elemental2_promise",
            ":grim_annotations",
            ":javax_annotation",
            ":jsinterop_annotations",
            ":org_jetbrains_annotations",
        ],
    )

    native.alias(
        name = "react4j_dom",
        actual = ":org_realityforge_react4j__react4j_dom__0_174",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_dom__0_174",
        jars = ["@org_realityforge_react4j__react4j_dom__0_174//file"],
        srcjar = "@org_realityforge_react4j__react4j_dom__0_174__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.174"],
        visibility = ["//visibility:private"],
        deps = [
            ":elemental2_dom",
            ":react4j_core",
        ],
    )

    native.alias(
        name = "react4j_processor",
        actual = ":org_realityforge_react4j__react4j_processor__0_174",
    )
    java_import(
        name = "org_realityforge_react4j__react4j_processor__0_174__plugin_library",
        jars = ["@org_realityforge_react4j__react4j_processor__0_174//file"],
        srcjar = "@org_realityforge_react4j__react4j_processor__0_174__sources//file",
        tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.174"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_react4j__react4j_processor__0_174__react4j_processor_react4jprocessor__plugin",
        processor_class = "react4j.processor.React4jProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_react4j__react4j_processor__0_174__plugin_library"],
    )
    java_library(
        name = "org_realityforge_react4j__react4j_processor__0_174",
        exported_plugins = ["org_realityforge_react4j__react4j_processor__0_174__react4j_processor_react4jprocessor__plugin"],
        visibility = ["//visibility:private"],
    )

    native.alias(
        name = "sting_core",
        actual = ":org_realityforge_sting__sting_core__0_16",
    )
    java_import(
        name = "org_realityforge_sting__sting_core__0_16",
        jars = ["@org_realityforge_sting__sting_core__0_16//file"],
        srcjar = "@org_realityforge_sting__sting_core__0_16__sources//file",
        tags = ["maven_coordinates=org.realityforge.sting:sting-core:0.16"],
        visibility = ["//visibility:private"],
        deps = [":javax_annotation"],
    )

    native.alias(
        name = "sting_processor",
        actual = ":org_realityforge_sting__sting_processor__0_16",
    )
    java_import(
        name = "org_realityforge_sting__sting_processor__0_16__plugin_library",
        jars = ["@org_realityforge_sting__sting_processor__0_16//file"],
        srcjar = "@org_realityforge_sting__sting_processor__0_16__sources//file",
        tags = ["maven_coordinates=org.realityforge.sting:sting-processor:0.16"],
        visibility = ["//visibility:private"],
        data = [":verify_config_sha256"],
    )
    java_plugin(
        name = "org_realityforge_sting__sting_processor__0_16__sting_processor_stingprocessor__plugin",
        processor_class = "sting.processor.StingProcessor",
        generates_api = True,
        visibility = ["//visibility:private"],
        deps = [":org_realityforge_sting__sting_processor__0_16__plugin_library"],
    )
    java_library(
        name = "org_realityforge_sting__sting_processor__0_16",
        exported_plugins = ["org_realityforge_sting__sting_processor__0_16__sting_processor_stingprocessor__plugin"],
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
