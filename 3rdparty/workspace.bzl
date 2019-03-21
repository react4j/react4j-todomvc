# Do not edit. bazel-deps autogenerates this file from dependencies.yaml.
def _jar_artifact_impl(ctx):
    jar_name = "%s.jar" % ctx.name
    ctx.download(
        output=ctx.path("jar/%s" % jar_name),
        url=ctx.attr.urls,
        sha256=ctx.attr.sha256,
        executable=False
    )
    src_name="%s-sources.jar" % ctx.name
    srcjar_attr=""
    has_sources = len(ctx.attr.src_urls) != 0
    if has_sources:
        ctx.download(
            output=ctx.path("jar/%s" % src_name),
            url=ctx.attr.src_urls,
            sha256=ctx.attr.src_sha256,
            executable=False
        )
        srcjar_attr ='\n    srcjar = ":%s",' % src_name

    build_file_contents = """
package(default_visibility = ['//visibility:public'])
java_import(
    name = 'jar',
    tags = ['maven_coordinates={artifact}'],
    jars = ['{jar_name}'],{srcjar_attr}
)
filegroup(
    name = 'file',
    srcs = [
        '{jar_name}',
        '{src_name}'
    ],
    visibility = ['//visibility:public']
)\n""".format(artifact = ctx.attr.artifact, jar_name = jar_name, src_name = src_name, srcjar_attr = srcjar_attr)
    ctx.file(ctx.path("jar/BUILD"), build_file_contents, False)
    return None

jar_artifact = repository_rule(
    attrs = {
        "artifact": attr.string(mandatory = True),
        "sha256": attr.string(mandatory = True),
        "urls": attr.string_list(mandatory = True),
        "src_sha256": attr.string(mandatory = False, default=""),
        "src_urls": attr.string_list(mandatory = False, default=[]),
    },
    implementation = _jar_artifact_impl
)

def jar_artifact_callback(hash):
    src_urls = []
    src_sha256 = ""
    source=hash.get("source", None)
    if source != None:
        src_urls = [source["url"]]
        src_sha256 = source["sha256"]
    jar_artifact(
        artifact = hash["artifact"],
        name = hash["name"],
        urls = [hash["url"]],
        sha256 = hash["sha256"],
        src_urls = src_urls,
        src_sha256 = src_sha256
    )
    native.bind(name = hash["bind"], actual = hash["actual"])


def list_dependencies():
    return [
    {"artifact": "com.google.jsinterop:jsinterop-annotations:1.0.2", "lang": "java", "sha1": "abd7319f53d018e11108a88f599bd16492448dd2", "sha256": "fcaf44731f5b6a606fa428a6d1a9ede11dc628c6f7d0f91c235aa71e337bf014", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2.jar", "source": {"sha1": "33716f8aef043f2f02b78ab4a1acda6cd90a7602", "sha256": "9091354e2fccf3585fd0de6c5aac78418d84b15d59e5401cfb3c70ebf4950459", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2-sources.jar"} , "name": "com_google_jsinterop_jsinterop_annotations", "actual": "@com_google_jsinterop_jsinterop_annotations//jar", "bind": "jar/com/google/jsinterop/jsinterop_annotations"},
    {"artifact": "org.realityforge.arez:arez-core:0.132", "lang": "java", "sha1": "6ee17e9fa56cfac5236c3a36b9e11bc0772825fc", "sha256": "d9cbae5782c45a6da3e52feec4d2e184598e240938667c653ef7060e705c435a", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/arez/arez-core/0.132/arez-core-0.132.jar", "source": {"sha1": "d0b2c8ab6050e2f28f03e7ca2c0ab0d66183820c", "sha256": "9432ac02e9bc9b01ca69ca59eae3849b3e9a145a592fe4b23c4e102da77f1e50", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/arez/arez-core/0.132/arez-core-0.132-sources.jar"} , "name": "org_realityforge_arez_arez_core", "actual": "@org_realityforge_arez_arez_core//jar", "bind": "jar/org/realityforge/arez/arez_core"},
    {"artifact": "org.realityforge.arez:arez-processor:0.132", "lang": "java", "sha1": "8d81984baf6273a3f8cae8cc2701cb3807921dab", "sha256": "af3f6331612edc70f692701295c45eb0852047dc925ab78a5111f4647537a0d2", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/arez/arez-processor/0.132/arez-processor-0.132.jar", "source": {"sha1": "eecbf54160b9575acf99c0dc35735dfaeff31407", "sha256": "99d215830a57331f08ea9d9cf786bdf96a292cf957f09db704ce6f21dcc873fd", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/arez/arez-processor/0.132/arez-processor-0.132-sources.jar"} , "name": "org_realityforge_arez_arez_processor", "actual": "@org_realityforge_arez_arez_processor//jar", "bind": "jar/org/realityforge/arez/arez_processor"},
    {"artifact": "org.realityforge.braincheck:braincheck:1.13.0", "lang": "java", "sha1": "8e3e425e52766cd28d1563116be190ad18195c04", "sha256": "1a95171e9ee0318f1ad4de2b80d0999d34500cd827f1966a2739b7898b6f31bb", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/braincheck/braincheck/1.13.0/braincheck-1.13.0.jar", "source": {"sha1": "9293a449fb7daafac201f81b037a69af30c0c3ee", "sha256": "7d784af0528b0e06a998f8718f953669d635a77bcaa50d46ffc93c5ded9cd922", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/braincheck/braincheck/1.13.0/braincheck-1.13.0-sources.jar"} , "name": "org_realityforge_braincheck_braincheck", "actual": "@org_realityforge_braincheck_braincheck//jar", "bind": "jar/org/realityforge/braincheck/braincheck"},
    {"artifact": "org.realityforge.com.google.elemental2:elemental2-core:1.0.0-b20-bfe6e22", "lang": "java", "sha1": "f4e70761ee0ea66242a6ccd8c5dcc6b7fa986fb0", "sha256": "27884a315dc3a3b99df7c5bf538f7f9dc3ee9d4e6abd32f4b51c5a2360d4826b", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/1.0.0-b20-bfe6e22/elemental2-core-1.0.0-b20-bfe6e22.jar", "source": {"sha1": "50aadcad8b1757f8ca37bfcfd051f0bbd2682c86", "sha256": "7383c0cb2f2f4f3617e1cbd2f6a507371332efbf7ffce6e7469f1af2b999b7bd", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/1.0.0-b20-bfe6e22/elemental2-core-1.0.0-b20-bfe6e22-sources.jar"} , "name": "org_realityforge_com_google_elemental2_elemental2_core", "actual": "@org_realityforge_com_google_elemental2_elemental2_core//jar", "bind": "jar/org/realityforge/com/google/elemental2/elemental2_core"},
    {"artifact": "org.realityforge.com.google.elemental2:elemental2-dom:1.0.0-b20-bfe6e22", "lang": "java", "sha1": "a28b9fba0b95dd1849524d85cf956e8946ade792", "sha256": "fde08b40920ba5662387bd935588ce3419e29f4c944e68f510e4f57e160acf0e", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/1.0.0-b20-bfe6e22/elemental2-dom-1.0.0-b20-bfe6e22.jar", "source": {"sha1": "4f440f7cccc7fd100e842d27a2990467b0c1420a", "sha256": "e09ceeb8470b63809766c41f9cfb7be9eb99212b4f15362ebc526d5d5a02ecef", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/1.0.0-b20-bfe6e22/elemental2-dom-1.0.0-b20-bfe6e22-sources.jar"} , "name": "org_realityforge_com_google_elemental2_elemental2_dom", "actual": "@org_realityforge_com_google_elemental2_elemental2_dom//jar", "bind": "jar/org/realityforge/com/google/elemental2/elemental2_dom"},
    {"artifact": "org.realityforge.com.google.elemental2:elemental2-promise:1.0.0-b20-bfe6e22", "lang": "java", "sha1": "78cb77a5fe88f6d068104b5d856fa39f4bdbd187", "sha256": "e1201a64ce65495776130b354d25b3e55c9133cd7d39e36fd51e904ad0a6eb04", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/1.0.0-b20-bfe6e22/elemental2-promise-1.0.0-b20-bfe6e22.jar", "source": {"sha1": "27607fc68fb72b4afed9787fc4cde9177728bc31", "sha256": "a3fda699a3695d6c29899ac202fbc786d5512fc0939443b4815da728bcbdd711", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/1.0.0-b20-bfe6e22/elemental2-promise-1.0.0-b20-bfe6e22-sources.jar"} , "name": "org_realityforge_com_google_elemental2_elemental2_promise", "actual": "@org_realityforge_com_google_elemental2_elemental2_promise//jar", "bind": "jar/org/realityforge/com/google/elemental2/elemental2_promise"},
    {"artifact": "org.realityforge.com.google.jsinterop:base:1.0.0-b2-e6d791f", "lang": "java", "sha1": "45f8575fc68da7c0208d32eab602a279d2a8efe9", "sha256": "471323d6c94ac8616db1e8288ca24b74e6ca4341c1e24d2894e81005485efcbd", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/jsinterop/base/1.0.0-b2-e6d791f/base-1.0.0-b2-e6d791f.jar", "source": {"sha1": "f129562eca800b2f8e77e8a7548f21069a42afb1", "sha256": "a883cd2cd25f46985d3b7a0f125040a37cb32a629963d2b8127d356d26d390e7", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/com/google/jsinterop/base/1.0.0-b2-e6d791f/base-1.0.0-b2-e6d791f-sources.jar"} , "name": "org_realityforge_com_google_jsinterop_base", "actual": "@org_realityforge_com_google_jsinterop_base//jar", "bind": "jar/org/realityforge/com/google/jsinterop/base"},
    {"artifact": "org.realityforge.javax.annotation:javax.annotation:1.0.0", "lang": "java", "sha1": "1ebb2908a65d23131748a11158f5984ac242800b", "sha256": "da4e5e4543c3a68cb27ff7bdafe5ca62f0c2117f49b6564fa11d7843f34c575e", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0.jar", "source": {"sha1": "30fd97a0b138f9973a7c086698683bf435dbed87", "sha256": "f50fb17b33f6e9ba6ba396b66550aacce0ac47119c69b478de850baf46a42c3e", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/javax/annotation/javax.annotation/1.0.0/javax.annotation-1.0.0-sources.jar"} , "name": "org_realityforge_javax_annotation_javax_annotation", "actual": "@org_realityforge_javax_annotation_javax_annotation//jar", "bind": "jar/org/realityforge/javax/annotation/javax_annotation"},
    {"artifact": "org.realityforge.org.jetbrains.annotations:org.jetbrains.annotations:1.0.0", "lang": "java", "sha1": "f3ec2e4da806fb25a01bb6002ddb0dbabb5ee119", "sha256": "bc571087ab07d06ddc64f24d9d09050776e6ff46f6c95882e0693a77bf64f449", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.0.0/org.jetbrains.annotations-1.0.0.jar", "source": {"sha1": "126565db2097270cb446a11cddf16f8badbcb609", "sha256": "712072082f6329d72907ecf2f5b9ae0621aa6b3f1b919fa1b79f369ba120053e", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/org/jetbrains/annotations/org.jetbrains.annotations/1.0.0/org.jetbrains.annotations-1.0.0-sources.jar"} , "name": "org_realityforge_org_jetbrains_annotations_org_jetbrains_annotations", "actual": "@org_realityforge_org_jetbrains_annotations_org_jetbrains_annotations//jar", "bind": "jar/org/realityforge/org/jetbrains/annotations/org_jetbrains_annotations"},
    {"artifact": "org.realityforge.react4j:react4j-core:0.122", "lang": "java", "sha1": "a96679ba47c37c1f55fd0366a904df00711227fe", "sha256": "5c243ede8a34e332ab5428cd69042755cf7929cb49891e71561f35e7be799e00", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/react4j/react4j-core/0.122/react4j-core-0.122.jar", "source": {"sha1": "4af4c4217f3b801d592a0c8d8ff16db59fea1654", "sha256": "5398654f548b7b34d0b2994726ad067773d5004d11cc8bc151cdbda1c33bda5a", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/react4j/react4j-core/0.122/react4j-core-0.122-sources.jar"} , "name": "org_realityforge_react4j_react4j_core", "actual": "@org_realityforge_react4j_react4j_core//jar", "bind": "jar/org/realityforge/react4j/react4j_core"},
    {"artifact": "org.realityforge.react4j:react4j-dom:0.122", "lang": "java", "sha1": "d38bf77a6e0af1cc1b178d13a6d178d988e4a4b2", "sha256": "a1c32ee5c6b1feb3e146b97b8ff41d0fb9ef3ff4a5454836b3035e1371555002", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/react4j/react4j-dom/0.122/react4j-dom-0.122.jar", "source": {"sha1": "a595e5e2db88476bbd175683025ed5e6c0f583d7", "sha256": "01a92fe4849f1cfd7761430147448edabbb4f6e8f2b1cc63dc1281c000a3d04b", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/react4j/react4j-dom/0.122/react4j-dom-0.122-sources.jar"} , "name": "org_realityforge_react4j_react4j_dom", "actual": "@org_realityforge_react4j_react4j_dom//jar", "bind": "jar/org/realityforge/react4j/react4j_dom"},
    {"artifact": "org.realityforge.react4j:react4j-processor:0.122", "lang": "java", "sha1": "ce95c93a5424dcb6dc53f0cb2415ad7047ea2c7c", "sha256": "d29f3fb781f513a8be6b6e7de9889d8834529165b72f1bc794373e5ab9a30938", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/react4j/react4j-processor/0.122/react4j-processor-0.122.jar", "source": {"sha1": "a1d9e54d50625678afc8f25fe8bf52170467a995", "sha256": "036d70e6c86fb342bd6de0f3aa332eae816f40154d5cfdac6a3acdd19b39a7bb", "repository": "http://repo1.maven.org/maven2", "url": "http://repo1.maven.org/maven2/org/realityforge/react4j/react4j-processor/0.122/react4j-processor-0.122-sources.jar"} , "name": "org_realityforge_react4j_react4j_processor", "actual": "@org_realityforge_react4j_react4j_processor//jar", "bind": "jar/org/realityforge/react4j/react4j_processor"},
    ]

def maven_dependencies(callback = jar_artifact_callback):
    for hash in list_dependencies():
        callback(hash)
