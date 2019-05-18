# DO NOT EDIT: File is auto-generated from ../dependencies.yaml by https://github.com/realityforge/bazel-depgen

"""
    Macro rules to load dependencies defined in '../dependencies.yaml'.

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
# |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile] REPLACED BY jsinterop_base
# +- org.realityforge.arez:arez-processor:jar:0.138 [compile]
# +- org.realityforge.react4j:react4j-core:jar:0.128 [compile]
# |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  +- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.23 [compile]
# |  |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |  |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile] REPLACED BY jsinterop_base
# |  +- org.realityforge.braincheck:braincheck:jar:1.16.0 [compile]
# |  |  +- org.realityforge.javax.annotation:javax.annotation:jar:1.0.0 [compile]
# |  |  \- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile, optional] REPLACED BY jsinterop_base
# |  \- org.realityforge.arez:arez-core:jar:0.137 [compile] (conflicts with 0.138)
# +- org.realityforge.react4j:react4j-dom:jar:0.128 [compile]
# |  +- org.realityforge.react4j:react4j-core:jar:0.128 [compile]
# |  \- org.realityforge.com.google.elemental2:elemental2-dom:jar:2.23 [compile]
# |     +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |     +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile] REPLACED BY jsinterop_base
# |     +- org.realityforge.com.google.elemental2:elemental2-core:jar:2.23 [compile]
# |     |  +- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]
# |     |  +- org.realityforge.com.google.jsinterop:base:jar:1.0.0-b2-e6d791f [compile] REPLACED BY jsinterop_base
# |     |  \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.23 [compile]
# |     \- org.realityforge.com.google.elemental2:elemental2-promise:jar:2.23 [compile]
# +- org.realityforge.react4j:react4j-processor:jar:0.128 [compile]
# \- org.realityforge.com.google.jsinterop:base-j2cl:jar:1.0.0-b2-e6d791f [compile]
#    \- com.google.jsinterop:jsinterop-annotations:jar:1.0.2 [compile]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def generate_workspace_rules(
        omit_gwt_user = False,
        omit_jsinterop_annotations = False,
        omit_javax_servlet_api = False,
        omit_validation_api = False,
        omit_arez_core = False,
        omit_arez_processor = False,
        omit_braincheck = False,
        omit_elemental2_core = False,
        omit_elemental2_dom = False,
        omit_elemental2_promise = False,
        omit_jsinterop_base = False,
        omit_javax_annotation = False,
        omit_react4j_core = False,
        omit_react4j_dom = False,
        omit_react4j_processor = False,
        omit_sac = False):
    """
        Repository rules macro to load dependencies specified by '../dependencies.yaml'.

        Must be run from a WORKSPACE file.
    """

    if not omit_gwt_user:
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

    if not omit_jsinterop_annotations:
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

    if not omit_javax_servlet_api:
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

    if not omit_validation_api:
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

    if not omit_arez_core:
        http_file(
            name = "org_realityforge_arez__arez_core__0_138",
            downloaded_file_path = "org/realityforge/arez/arez-core/0.138/arez-core-0.138.jar",
            sha256 = "f8f3528029e0b101681fb81d28662291458f808903335e1fe4486fd6f2c2e69e",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-core/0.138/arez-core-0.138.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.138/arez-core-0.138.jar",
            ],
        )

        http_file(
            name = "org_realityforge_arez__arez_core__0_138__sources",
            downloaded_file_path = "org/realityforge/arez/arez-core/0.138/arez-core-0.138-sources.jar",
            sha256 = "694782429e45d1b2c6e5c46b8d8fe0c36f0d124ee1559e2f08caa07de9d67d5b",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-core/0.138/arez-core-0.138-sources.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-core/0.138/arez-core-0.138-sources.jar",
            ],
        )

    if not omit_arez_processor:
        http_file(
            name = "org_realityforge_arez__arez_processor__0_138",
            downloaded_file_path = "org/realityforge/arez/arez-processor/0.138/arez-processor-0.138.jar",
            sha256 = "9d5fbf4cb061c488f1624ac31c8e506e6ef6e6482414b6e71fa8b1eaea7a79d9",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-processor/0.138/arez-processor-0.138.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.138/arez-processor-0.138.jar",
            ],
        )

        http_file(
            name = "org_realityforge_arez__arez_processor__0_138__sources",
            downloaded_file_path = "org/realityforge/arez/arez-processor/0.138/arez-processor-0.138-sources.jar",
            sha256 = "54d09c544eb0cddaea447ca200c0a313bb12a2b6b5e31c358f353101d8234a94",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/arez/arez-processor/0.138/arez-processor-0.138-sources.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/arez/arez-processor/0.138/arez-processor-0.138-sources.jar",
            ],
        )

    if not omit_braincheck:
        http_file(
            name = "org_realityforge_braincheck__braincheck__1_16_0",
            downloaded_file_path = "org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0.jar",
            sha256 = "2beb46fe416744d1b8bfe70ba6d055c6d4fea79315361a028a10d7237efa2d5b",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0.jar",
            ],
        )

        http_file(
            name = "org_realityforge_braincheck__braincheck__1_16_0__sources",
            downloaded_file_path = "org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0-sources.jar",
            sha256 = "a8d1b90c26ee1c79ae2397c640d427637b98ee5da5b4559fe68bc9955f675542",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0-sources.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/braincheck/braincheck/1.16.0/braincheck-1.16.0-sources.jar",
            ],
        )

    if not omit_elemental2_core:
        http_file(
            name = "org_realityforge_com_google_elemental2__elemental2_core__2_23",
            downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.23/elemental2-core-2.23.jar",
            sha256 = "4e331315454d7b1806a73eb39dcd5cb1c9a67e6b36f111ec06f5c5c7e375bbdb",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.23/elemental2-core-2.23.jar"],
        )

        http_file(
            name = "org_realityforge_com_google_elemental2__elemental2_core__2_23__sources",
            downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-core/2.23/elemental2-core-2.23-sources.jar",
            sha256 = "e36c498785657d983898bfae48941d683ab8125d985266da0300c4c71af31949",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-core/2.23/elemental2-core-2.23-sources.jar"],
        )

    if not omit_elemental2_dom:
        http_file(
            name = "org_realityforge_com_google_elemental2__elemental2_dom__2_23",
            downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.23/elemental2-dom-2.23.jar",
            sha256 = "1830ba738649ffe450e05d0730b091b2ad83735f2e35d00b07bef8c1e77301cd",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.23/elemental2-dom-2.23.jar"],
        )

        http_file(
            name = "org_realityforge_com_google_elemental2__elemental2_dom__2_23__sources",
            downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-dom/2.23/elemental2-dom-2.23-sources.jar",
            sha256 = "965edab37e79ca5135a1f340b130ef7bb6f5101bf96bbdc67b9394b3ecd60b75",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-dom/2.23/elemental2-dom-2.23-sources.jar"],
        )

    if not omit_elemental2_promise:
        http_file(
            name = "org_realityforge_com_google_elemental2__elemental2_promise__2_23",
            downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.23/elemental2-promise-2.23.jar",
            sha256 = "c68e9add46021532b72e9e368a56efd3d6d3128f3a5f239a291d5ab654f4f5d9",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.23/elemental2-promise-2.23.jar"],
        )

        http_file(
            name = "org_realityforge_com_google_elemental2__elemental2_promise__2_23__sources",
            downloaded_file_path = "org/realityforge/com/google/elemental2/elemental2-promise/2.23/elemental2-promise-2.23-sources.jar",
            sha256 = "f1daaf91423d411d728218b52ffe16eeec994bb2a616e85254ff48665a0dbe33",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/elemental2/elemental2-promise/2.23/elemental2-promise-2.23-sources.jar"],
        )

    if not omit_jsinterop_base:
        http_file(
            name = "org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f",
            downloaded_file_path = "org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f.jar",
            sha256 = "e236e2951035a7f78dbd86853f5a2483216ed5edbe982e5087c5ee778e31e327",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f.jar"],
        )

        http_file(
            name = "org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f__sources",
            downloaded_file_path = "org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f-sources.jar",
            sha256 = "24cc5a026b88a03b044c49fdc4346297a0c028c2cf5da40b566752987bfe3a57",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/jsinterop/base-j2cl/1.0.0-b2-e6d791f/base-j2cl-1.0.0-b2-e6d791f-sources.jar"],
        )

    if not omit_javax_annotation:
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

    if not omit_react4j_core:
        http_file(
            name = "org_realityforge_react4j__react4j_core__0_128",
            downloaded_file_path = "org/realityforge/react4j/react4j-core/0.128/react4j-core-0.128.jar",
            sha256 = "d5f37d981d66617123d03b318672c6539f3fc87913b8ec0a1666d8943e72e5e3",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-core/0.128/react4j-core-0.128.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.128/react4j-core-0.128.jar",
            ],
        )

        http_file(
            name = "org_realityforge_react4j__react4j_core__0_128__sources",
            downloaded_file_path = "org/realityforge/react4j/react4j-core/0.128/react4j-core-0.128-sources.jar",
            sha256 = "bbc008ff2fd8b4803d0e3710ff6125595ed35c70fa89c6f1a232219c9a66e192",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-core/0.128/react4j-core-0.128-sources.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-core/0.128/react4j-core-0.128-sources.jar",
            ],
        )

    if not omit_react4j_dom:
        http_file(
            name = "org_realityforge_react4j__react4j_dom__0_128",
            downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.128/react4j-dom-0.128.jar",
            sha256 = "859d00aae227c72a02b5e190d7bac1be5a8f11ac4ca1d26aa5fa17306b03f431",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-dom/0.128/react4j-dom-0.128.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.128/react4j-dom-0.128.jar",
            ],
        )

        http_file(
            name = "org_realityforge_react4j__react4j_dom__0_128__sources",
            downloaded_file_path = "org/realityforge/react4j/react4j-dom/0.128/react4j-dom-0.128-sources.jar",
            sha256 = "9594dc4e897e1d7a958fa37abd15648a507892254c2e3645b3e9bd09fa84f6ce",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-dom/0.128/react4j-dom-0.128-sources.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-dom/0.128/react4j-dom-0.128-sources.jar",
            ],
        )

    if not omit_react4j_processor:
        http_file(
            name = "org_realityforge_react4j__react4j_processor__0_128",
            downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.128/react4j-processor-0.128.jar",
            sha256 = "6f2b55ffae91eab01c0d2e6a2e9e8e2795e51b5949acd17696078306bd8bd998",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-processor/0.128/react4j-processor-0.128.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.128/react4j-processor-0.128.jar",
            ],
        )

        http_file(
            name = "org_realityforge_react4j__react4j_processor__0_128__sources",
            downloaded_file_path = "org/realityforge/react4j/react4j-processor/0.128/react4j-processor-0.128-sources.jar",
            sha256 = "fe908db9fc7a0e0037724ed8d9c0ef9b6ddca55a9f62ba44ba368ad780ee59b6",
            urls = [
                "https://stocksoftware.jfrog.io/stocksoftware/staging/org/realityforge/react4j/react4j-processor/0.128/react4j-processor-0.128-sources.jar",
                "https://repo.maven.apache.org/maven2/org/realityforge/react4j/react4j-processor/0.128/react4j-processor-0.128-sources.jar",
            ],
        )

    if not omit_sac:
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

def generate_targets(
        omit_gwt_user = False,
        omit_jsinterop_annotations = False,
        omit_javax_servlet_api = False,
        omit_validation_api = False,
        omit_arez_core = False,
        omit_arez_processor = False,
        omit_braincheck = False,
        omit_elemental2_core = False,
        omit_elemental2_dom = False,
        omit_elemental2_promise = False,
        omit_jsinterop_base = False,
        omit_javax_annotation = False,
        omit_react4j_core = False,
        omit_react4j_dom = False,
        omit_react4j_processor = False,
        omit_sac = False):
    """
        Macro to define targets for dependencies specified by '../dependencies.yaml'.
    """

    if not omit_gwt_user:
        native.alias(
            name = "gwt_user",
            actual = ":com_google_gwt__gwt_user__2_8_2",
        )
        native.java_import(
            name = "com_google_gwt__gwt_user__2_8_2",
            jars = ["@com_google_gwt__gwt_user__2_8_2//file"],
            licenses = ["notice"],
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

    if not omit_jsinterop_annotations:
        native.alias(
            name = "jsinterop_annotations",
            actual = ":com_google_jsinterop__jsinterop_annotations__1_0_2",
        )
        native.java_import(
            name = "com_google_jsinterop__jsinterop_annotations__1_0_2",
            jars = ["@com_google_jsinterop__jsinterop_annotations__1_0_2//file"],
            licenses = ["notice"],
            srcjar = "@com_google_jsinterop__jsinterop_annotations__1_0_2__sources//file",
            tags = ["maven_coordinates=com.google.jsinterop:jsinterop-annotations:1.0.2"],
            visibility = ["//visibility:private"],
        )

    if not omit_javax_servlet_api:
        native.alias(
            name = "javax_servlet_api",
            actual = ":javax_servlet__javax_servlet_api__3_1_0",
            visibility = ["//visibility:private"],
        )
        native.java_import(
            name = "javax_servlet__javax_servlet_api__3_1_0",
            jars = ["@javax_servlet__javax_servlet_api__3_1_0//file"],
            licenses = ["notice"],
            srcjar = "@javax_servlet__javax_servlet_api__3_1_0__sources//file",
            tags = ["maven_coordinates=javax.servlet:javax.servlet-api:3.1.0"],
            visibility = ["//visibility:private"],
        )

    if not omit_validation_api:
        native.alias(
            name = "validation_api",
            actual = ":javax_validation__validation_api__1_0_0_ga",
            visibility = ["//visibility:private"],
        )
        native.java_import(
            name = "javax_validation__validation_api__1_0_0_ga",
            jars = ["@javax_validation__validation_api__1_0_0_ga//file"],
            licenses = ["notice"],
            srcjar = "@javax_validation__validation_api__1_0_0_ga__sources//file",
            tags = ["maven_coordinates=javax.validation:validation-api:1.0.0.GA"],
            visibility = ["//visibility:private"],
        )

    if not omit_arez_core:
        native.alias(
            name = "arez_core",
            actual = ":org_realityforge_arez__arez_core__0_138",
        )
        native.java_import(
            name = "org_realityforge_arez__arez_core__0_138",
            jars = ["@org_realityforge_arez__arez_core__0_138//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_arez__arez_core__0_138__sources//file",
            tags = ["maven_coordinates=org.realityforge.arez:arez-core:0.138"],
            visibility = ["//visibility:private"],
            deps = [
                ":javax_annotation",
                ":jsinterop_base",
            ],
        )

    if not omit_arez_processor:
        native.alias(
            name = "arez_processor",
            actual = ":org_realityforge_arez__arez_processor__0_138",
        )
        native.java_import(
            name = "org_realityforge_arez__arez_processor__0_138__library",
            jars = ["@org_realityforge_arez__arez_processor__0_138//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_arez__arez_processor__0_138__sources//file",
            tags = ["maven_coordinates=org.realityforge.arez:arez-processor:0.138"],
            visibility = ["//visibility:private"],
        )
        native.java_plugin(
            name = "org_realityforge_arez__arez_processor__0_138__arez_processor_arezprocessor__plugin",
            processor_class = "arez.processor.ArezProcessor",
            generates_api = True,
            visibility = ["//visibility:private"],
            deps = [":org_realityforge_arez__arez_processor__0_138__library"],
        )
        native.java_library(
            name = "org_realityforge_arez__arez_processor__0_138",
            exported_plugins = ["org_realityforge_arez__arez_processor__0_138__arez_processor_arezprocessor__plugin"],
            visibility = ["//visibility:private"],
        )

    if not omit_braincheck:
        native.alias(
            name = "braincheck",
            actual = ":org_realityforge_braincheck__braincheck__1_16_0",
        )
        native.java_import(
            name = "org_realityforge_braincheck__braincheck__1_16_0",
            jars = ["@org_realityforge_braincheck__braincheck__1_16_0//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_braincheck__braincheck__1_16_0__sources//file",
            tags = ["maven_coordinates=org.realityforge.braincheck:braincheck:1.16.0"],
            visibility = ["//visibility:private"],
            deps = [":javax_annotation"],
        )

    if not omit_elemental2_core:
        native.alias(
            name = "elemental2_core",
            actual = ":org_realityforge_com_google_elemental2__elemental2_core__2_23",
        )
        native.java_import(
            name = "org_realityforge_com_google_elemental2__elemental2_core__2_23",
            jars = ["@org_realityforge_com_google_elemental2__elemental2_core__2_23//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_com_google_elemental2__elemental2_core__2_23__sources//file",
            tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-core:2.23"],
            visibility = ["//visibility:private"],
            deps = [
                ":elemental2_promise",
                ":jsinterop_annotations",
                ":jsinterop_base",
            ],
        )

    if not omit_elemental2_dom:
        native.alias(
            name = "elemental2_dom",
            actual = ":org_realityforge_com_google_elemental2__elemental2_dom__2_23",
        )
        native.java_import(
            name = "org_realityforge_com_google_elemental2__elemental2_dom__2_23",
            jars = ["@org_realityforge_com_google_elemental2__elemental2_dom__2_23//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_com_google_elemental2__elemental2_dom__2_23__sources//file",
            tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-dom:2.23"],
            visibility = ["//visibility:private"],
            deps = [
                ":elemental2_core",
                ":elemental2_promise",
                ":jsinterop_annotations",
                ":jsinterop_base",
            ],
        )

    if not omit_elemental2_promise:
        native.alias(
            name = "elemental2_promise",
            actual = ":org_realityforge_com_google_elemental2__elemental2_promise__2_23",
        )
        native.java_import(
            name = "org_realityforge_com_google_elemental2__elemental2_promise__2_23",
            jars = ["@org_realityforge_com_google_elemental2__elemental2_promise__2_23//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_com_google_elemental2__elemental2_promise__2_23__sources//file",
            tags = ["maven_coordinates=org.realityforge.com.google.elemental2:elemental2-promise:2.23"],
            visibility = ["//visibility:private"],
            deps = [
                ":jsinterop_annotations",
                ":jsinterop_base",
            ],
        )

    if not omit_jsinterop_base:
        native.alias(
            name = "jsinterop_base",
            actual = ":org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f",
        )
        native.java_import(
            name = "org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f",
            jars = ["@org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_com_google_jsinterop__base_j2cl__1_0_0_b2_e6d791f__sources//file",
            tags = ["maven_coordinates=org.realityforge.com.google.jsinterop:base-j2cl:1.0.0-b2-e6d791f"],
            visibility = ["//visibility:private"],
            deps = [":jsinterop_annotations"],
        )

    if not omit_javax_annotation:
        native.alias(
            name = "javax_annotation",
            actual = ":org_realityforge_javax_annotation__javax_annotation__1_0_0",
        )
        native.java_import(
            name = "org_realityforge_javax_annotation__javax_annotation__1_0_0",
            jars = ["@org_realityforge_javax_annotation__javax_annotation__1_0_0//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_javax_annotation__javax_annotation__1_0_0__sources//file",
            tags = ["maven_coordinates=org.realityforge.javax.annotation:javax.annotation:1.0.0"],
            visibility = ["//visibility:private"],
        )

    if not omit_react4j_core:
        native.alias(
            name = "react4j_core",
            actual = ":org_realityforge_react4j__react4j_core__0_128",
        )
        native.java_import(
            name = "org_realityforge_react4j__react4j_core__0_128",
            jars = ["@org_realityforge_react4j__react4j_core__0_128//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_react4j__react4j_core__0_128__sources//file",
            tags = ["maven_coordinates=org.realityforge.react4j:react4j-core:0.128"],
            visibility = ["//visibility:private"],
            deps = [
                ":arez_core",
                ":braincheck",
                ":elemental2_promise",
                ":javax_annotation",
            ],
        )

    if not omit_react4j_dom:
        native.alias(
            name = "react4j_dom",
            actual = ":org_realityforge_react4j__react4j_dom__0_128",
        )
        native.java_import(
            name = "org_realityforge_react4j__react4j_dom__0_128",
            jars = ["@org_realityforge_react4j__react4j_dom__0_128//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_react4j__react4j_dom__0_128__sources//file",
            tags = ["maven_coordinates=org.realityforge.react4j:react4j-dom:0.128"],
            visibility = ["//visibility:private"],
            deps = [
                ":elemental2_dom",
                ":react4j_core",
            ],
        )

    if not omit_react4j_processor:
        native.alias(
            name = "react4j_processor",
            actual = ":org_realityforge_react4j__react4j_processor__0_128",
        )
        native.java_import(
            name = "org_realityforge_react4j__react4j_processor__0_128__library",
            jars = ["@org_realityforge_react4j__react4j_processor__0_128//file"],
            licenses = ["notice"],
            srcjar = "@org_realityforge_react4j__react4j_processor__0_128__sources//file",
            tags = ["maven_coordinates=org.realityforge.react4j:react4j-processor:0.128"],
            visibility = ["//visibility:private"],
        )
        native.java_plugin(
            name = "org_realityforge_react4j__react4j_processor__0_128__react4j_processor_reactprocessor__plugin",
            processor_class = "react4j.processor.ReactProcessor",
            generates_api = True,
            visibility = ["//visibility:private"],
            deps = [":org_realityforge_react4j__react4j_processor__0_128__library"],
        )
        native.java_library(
            name = "org_realityforge_react4j__react4j_processor__0_128",
            exported_plugins = ["org_realityforge_react4j__react4j_processor__0_128__react4j_processor_reactprocessor__plugin"],
            visibility = ["//visibility:private"],
        )

    if not omit_sac:
        native.alias(
            name = "sac",
            actual = ":org_w3c_css__sac__1_3",
            visibility = ["//visibility:private"],
        )
        native.java_import(
            name = "org_w3c_css__sac__1_3",
            jars = ["@org_w3c_css__sac__1_3//file"],
            licenses = ["notice"],
            srcjar = "@org_w3c_css__sac__1_3__sources//file",
            tags = ["maven_coordinates=org.w3c.css:sac:1.3"],
            visibility = ["//visibility:private"],
        )
