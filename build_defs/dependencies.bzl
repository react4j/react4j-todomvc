# DO NOT EDIT: File is auto-generated from dependencies.yml by https://github.com/realityforge/bazel-depgen version 0.10

"""
    Macro rules to load dependencies.

    Invoke 'generate_workspace_rules' from a WORKSPACE file.
    Invoke 'generate_targets' from a BUILD.bazel file.
"""
# Dependency Graph Generated from the input data
# \- org.realityforge.com.google.gwt:gwt-dev:jar:2.8.2-v20191108 [compile]
#    +- com.google.code.findbugs:jsr305:jar:1.3.9 [compile]
#    +- com.google.code.gson:gson:jar:2.6.2 [compile]
#    +- org.ow2.asm:asm:jar:7.1 [compile]
#    +- org.ow2.asm:asm-util:jar:7.1 [compile]
#    |  +- org.ow2.asm:asm:jar:7.1 [compile]
#    |  +- org.ow2.asm:asm-tree:jar:7.1 [compile]
#    |  |  \- org.ow2.asm:asm:jar:7.1 [compile]
#    |  \- org.ow2.asm:asm-analysis:jar:7.1 [compile]
#    |     \- org.ow2.asm:asm-tree:jar:7.1 [compile]
#    +- org.ow2.asm:asm-commons:jar:7.1 [compile]
#    |  +- org.ow2.asm:asm:jar:7.1 [compile]
#    |  +- org.ow2.asm:asm-tree:jar:7.1 [compile]
#    |  \- org.ow2.asm:asm-analysis:jar:7.1 [compile]
#    +- colt:colt:jar:1.2.0 [compile]
#    +- ant:ant:jar:1.6.5 [compile]
#    |  \- xml-apis:xml-apis:jar:1.3.04 [compile]
#    +- commons-collections:commons-collections:jar:3.2.2 [compile]
#    +- commons-io:commons-io:jar:2.4 [compile]
#    +- com.ibm.icu:icu4j:jar:63.1 [compile]
#    +- tapestry:tapestry:jar:4.0.2 [compile]
#    +- net.sourceforge.htmlunit:htmlunit:jar:2.19 [compile]
#    |  +- xalan:xalan:jar:2.7.2 [compile]
#    |  |  \- xalan:serializer:jar:2.7.2 [compile]
#    |  |     \- xml-apis:xml-apis:jar:1.3.04 [compile]
#    |  +- commons-collections:commons-collections:jar:3.2.1 [compile] (conflicts with 3.2.2)
#    |  +- org.apache.commons:commons-lang3:jar:3.4 [compile]
#    |  +- org.apache.httpcomponents:httpclient:jar:4.5.1 [compile]
#    |  |  +- org.apache.httpcomponents:httpcore:jar:4.4.3 [compile]
#    |  |  +- commons-logging:commons-logging:jar:1.2 [compile]
#    |  |  \- commons-codec:commons-codec:jar:1.9 [compile] (conflicts with 1.10)
#    |  +- org.apache.httpcomponents:httpmime:jar:4.5.1 [compile]
#    |  |  \- org.apache.httpcomponents:httpclient:jar:4.5.1 [compile]
#    |  +- commons-codec:commons-codec:jar:1.10 [compile]
#    |  +- net.sourceforge.htmlunit:htmlunit-core-js:jar:2.17 [compile]
#    |  +- net.sourceforge.nekohtml:nekohtml:jar:1.9.22 [compile]
#    |  +- net.sourceforge.cssparser:cssparser:jar:0.9.18 [compile]
#    |  |  \- org.w3c.css:sac:jar:1.3 [compile]
#    |  +- commons-io:commons-io:jar:2.4 [compile]
#    |  +- commons-logging:commons-logging:jar:1.2 [compile]
#    |  |  +- log4j:log4j:jar:1.2.17 [compile, optional]
#    |  |  +- logkit:logkit:jar:1.0.1 [compile, optional]
#    |  |  \- avalon-framework:avalon-framework:jar:4.1.5 [compile, optional]
#    |  \- org.eclipse.jetty.websocket:websocket-client:jar:9.2.13.v20150730 [compile]
#    |     +- org.eclipse.jetty:jetty-util:jar:9.2.13.v20150730 [compile] (conflicts with 9.2.14.v20151106)
#    |     +- org.eclipse.jetty:jetty-io:jar:9.2.13.v20150730 [compile] (conflicts with 9.2.14.v20151106)
#    |     \- org.eclipse.jetty.websocket:websocket-common:jar:9.2.13.v20150730 [compile]
#    |        +- org.eclipse.jetty.websocket:websocket-api:jar:9.2.13.v20150730 [compile]
#    |        +- org.eclipse.jetty:jetty-util:jar:9.2.13.v20150730 [compile] (conflicts with 9.2.14.v20151106)
#    |        \- org.eclipse.jetty:jetty-io:jar:9.2.13.v20150730 [compile] (conflicts with 9.2.14.v20151106)
#    +- org.eclipse.jetty:jetty-webapp:jar:9.2.14.v20151106 [compile]
#    |  +- org.eclipse.jetty:jetty-xml:jar:9.2.14.v20151106 [compile]
#    |  |  \- org.eclipse.jetty:jetty-util:jar:9.2.14.v20151106 [compile]
#    |  +- org.eclipse.jetty:jetty-servlet:jar:9.2.14.v20151106 [compile]
#    |  |  +- org.eclipse.jetty:jetty-security:jar:9.2.14.v20151106 [compile]
#    |  |  |  \- org.eclipse.jetty:jetty-server:jar:9.2.14.v20151106 [compile]
#    |  |  \- org.eclipse.jetty:jetty-jmx:jar:9.2.14.v20151106 [compile, optional]
#    |  \- org.eclipse.jetty:jetty-jmx:jar:9.2.14.v20151106 [compile, optional]
#    +- org.eclipse.jetty:jetty-servlets:jar:9.2.14.v20151106 [compile]
#    |  +- org.eclipse.jetty:jetty-continuation:jar:9.2.14.v20151106 [compile]
#    |  +- org.eclipse.jetty:jetty-http:jar:9.2.14.v20151106 [compile]
#    |  |  \- org.eclipse.jetty:jetty-util:jar:9.2.14.v20151106 [compile]
#    |  +- org.eclipse.jetty:jetty-util:jar:9.2.14.v20151106 [compile]
#    |  \- org.eclipse.jetty:jetty-io:jar:9.2.14.v20151106 [compile]
#    |     \- org.eclipse.jetty:jetty-util:jar:9.2.14.v20151106 [compile]
#    +- org.eclipse.jetty:jetty-annotations:jar:9.2.14.v20151106 [compile]
#    |  +- org.eclipse.jetty:jetty-plus:jar:9.2.14.v20151106 [compile]
#    |  |  +- org.eclipse.jetty:jetty-webapp:jar:9.2.14.v20151106 [compile]
#    |  |  \- org.eclipse.jetty:jetty-jndi:jar:9.2.14.v20151106 [compile]
#    |  |     \- org.eclipse.jetty:jetty-util:jar:9.2.14.v20151106 [compile]
#    |  +- org.eclipse.jetty:jetty-webapp:jar:9.2.14.v20151106 [compile]
#    |  +- javax.annotation:javax.annotation-api:jar:1.2 [compile]
#    |  +- org.ow2.asm:asm:jar:5.0.1 [compile] (conflicts with 7.1)
#    |  \- org.ow2.asm:asm-commons:jar:5.0.1 [compile] (conflicts with 7.1)
#    \- org.eclipse.jetty:apache-jsp:jar:9.2.14.v20151106 [compile]
#       +- org.eclipse.jetty:jetty-util:jar:9.2.14.v20151106 [compile]
#       +- org.eclipse.jetty:jetty-server:jar:9.2.14.v20151106 [compile]
#       |  +- javax.servlet:javax.servlet-api:jar:3.1.0 [compile]
#       |  +- org.eclipse.jetty:jetty-http:jar:9.2.14.v20151106 [compile]
#       |  +- org.eclipse.jetty:jetty-io:jar:9.2.14.v20151106 [compile]
#       |  \- org.eclipse.jetty:jetty-jmx:jar:9.2.14.v20151106 [compile, optional]
#       +- org.eclipse.jetty.toolchain:jetty-schemas:jar:3.1.M0 [compile]
#       +- javax.servlet:javax.servlet-api:jar:3.1.0 [compile]
#       \- org.mortbay.jasper:apache-jsp:jar:8.0.9.M3 [compile]
#          +- org.eclipse.jetty.toolchain:jetty-schemas:jar:3.1.M0 [compile]
#          +- org.mortbay.jasper:apache-el:jar:8.0.9.M3 [compile]
#          |  +- javax.servlet:javax.servlet-api:jar:3.1.0 [compile, optional]
#          |  \- org.apache.tomcat:tomcat-jasper-el:jar:8.0.9 [compile, optional]
#          \- org.apache.tomcat:tomcat-jasper:jar:8.0.9 [compile, optional]

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_java//java:defs.bzl", "java_import")

def generate_workspace_rules(
        omit_ant = False,
        omit_avalon_framework = False,
        omit_colt = False,
        omit_jsr305 = False,
        omit_gson = False,
        omit_icu4j = False,
        omit_commons_codec = False,
        omit_commons_collections = False,
        omit_commons_io = False,
        omit_commons_logging = False,
        omit_javax_annotation_api = False,
        omit_javax_servlet_api = False,
        omit_log4j = False,
        omit_logkit = False,
        omit_cssparser = False,
        omit_htmlunit = False,
        omit_htmlunit_core_js = False,
        omit_nekohtml = False,
        omit_commons_lang3 = False,
        omit_httpclient = False,
        omit_httpcore = False,
        omit_httpmime = False,
        omit_tomcat_jasper = False,
        omit_tomcat_jasper_el = False,
        omit_jetty_schemas = False,
        omit_websocket_api = False,
        omit_websocket_client = False,
        omit_websocket_common = False,
        omit_apache_jsp = False,
        omit_jetty_annotations = False,
        omit_jetty_continuation = False,
        omit_jetty_http = False,
        omit_jetty_io = False,
        omit_jetty_jmx = False,
        omit_jetty_jndi = False,
        omit_jetty_plus = False,
        omit_jetty_security = False,
        omit_jetty_server = False,
        omit_jetty_servlet = False,
        omit_jetty_servlets = False,
        omit_jetty_util = False,
        omit_jetty_webapp = False,
        omit_jetty_xml = False,
        omit_apache_el = False,
        omit_org_mortbay_jasper__apache_jsp = False,
        omit_asm = False,
        omit_asm_analysis = False,
        omit_asm_commons = False,
        omit_asm_tree = False,
        omit_asm_util = False,
        omit_gwt_dev = False,
        omit_sac = False,
        omit_tapestry = False,
        omit_serializer = False,
        omit_xalan = False,
        omit_xml_apis = False):
    """
        Repository rules macro to load dependencies.

        Must be run from a WORKSPACE file.
    """

    if not omit_ant:
        http_file(
            name = "ant__ant__1_6_5",
            downloaded_file_path = "ant/ant/1.6.5/ant-1.6.5.jar",
            sha256 = "f06a601c718a7c9262d74b7ec3baad14c82584e89235089b4f821d6a44d9e1e4",
            urls = ["https://repo.maven.apache.org/maven2/ant/ant/1.6.5/ant-1.6.5.jar"],
        )

    if not omit_avalon_framework:
        http_file(
            name = "avalon_framework__avalon_framework__4_1_5",
            downloaded_file_path = "avalon-framework/avalon-framework/4.1.5/avalon-framework-4.1.5.jar",
            sha256 = "833f1e50dfa628f13d4a4206b3ec6d8f42e96284a35d76c072d880804b747a04",
            urls = ["https://repo.maven.apache.org/maven2/avalon-framework/avalon-framework/4.1.5/avalon-framework-4.1.5.jar"],
        )

    if not omit_colt:
        http_file(
            name = "colt__colt__1_2_0",
            downloaded_file_path = "colt/colt/1.2.0/colt-1.2.0.jar",
            sha256 = "e1fcbfbdd0d0caedadfb59febace5a62812db3b9425f3a03ef4c4cbba3ed0ee3",
            urls = ["https://repo.maven.apache.org/maven2/colt/colt/1.2.0/colt-1.2.0.jar"],
        )

    if not omit_jsr305:
        http_file(
            name = "com_google_code_findbugs__jsr305__1_3_9",
            downloaded_file_path = "com/google/code/findbugs/jsr305/1.3.9/jsr305-1.3.9.jar",
            sha256 = "905721a0eea90a81534abb7ee6ef4ea2e5e645fa1def0a5cd88402df1b46c9ed",
            urls = ["https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/1.3.9/jsr305-1.3.9.jar"],
        )

    if not omit_gson:
        http_file(
            name = "com_google_code_gson__gson__2_6_2",
            downloaded_file_path = "com/google/code/gson/gson/2.6.2/gson-2.6.2.jar",
            sha256 = "b8545ba775f641f8bba86027f06307152279fee89a46a4006df1bf2f874d4d9d",
            urls = ["https://repo.maven.apache.org/maven2/com/google/code/gson/gson/2.6.2/gson-2.6.2.jar"],
        )

    if not omit_icu4j:
        http_file(
            name = "com_ibm_icu__icu4j__63_1",
            downloaded_file_path = "com/ibm/icu/icu4j/63.1/icu4j-63.1.jar",
            sha256 = "0940c61d12667413a58206a010ab5ca0758cc44ad9e9957ea98e0f871ab5eda0",
            urls = ["https://repo.maven.apache.org/maven2/com/ibm/icu/icu4j/63.1/icu4j-63.1.jar"],
        )

    if not omit_commons_codec:
        http_file(
            name = "commons_codec__commons_codec__1_10",
            downloaded_file_path = "commons-codec/commons-codec/1.10/commons-codec-1.10.jar",
            sha256 = "4241dfa94e711d435f29a4604a3e2de5c4aa3c165e23bd066be6fc1fc4309569",
            urls = ["https://repo.maven.apache.org/maven2/commons-codec/commons-codec/1.10/commons-codec-1.10.jar"],
        )

    if not omit_commons_collections:
        http_file(
            name = "commons_collections__commons_collections__3_2_2",
            downloaded_file_path = "commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar",
            sha256 = "eeeae917917144a68a741d4c0dff66aa5c5c5fd85593ff217bced3fc8ca783b8",
            urls = ["https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar"],
        )

    if not omit_commons_io:
        http_file(
            name = "commons_io__commons_io__2_4",
            downloaded_file_path = "commons-io/commons-io/2.4/commons-io-2.4.jar",
            sha256 = "cc6a41dc3eaacc9e440a6bd0d2890b20d36b4ee408fe2d67122f328bb6e01581",
            urls = ["https://repo.maven.apache.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.jar"],
        )

    if not omit_commons_logging:
        http_file(
            name = "commons_logging__commons_logging__1_2",
            downloaded_file_path = "commons-logging/commons-logging/1.2/commons-logging-1.2.jar",
            sha256 = "daddea1ea0be0f56978ab3006b8ac92834afeefbd9b7e4e6316fca57df0fa636",
            urls = ["https://repo.maven.apache.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar"],
        )

    if not omit_javax_annotation_api:
        http_file(
            name = "javax_annotation__javax_annotation_api__1_2",
            downloaded_file_path = "javax/annotation/javax.annotation-api/1.2/javax.annotation-api-1.2.jar",
            sha256 = "5909b396ca3a2be10d0eea32c74ef78d816e1b4ead21de1d78de1f890d033e04",
            urls = ["https://repo.maven.apache.org/maven2/javax/annotation/javax.annotation-api/1.2/javax.annotation-api-1.2.jar"],
        )

    if not omit_javax_servlet_api:
        http_file(
            name = "javax_servlet__javax_servlet_api__3_1_0",
            downloaded_file_path = "javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar",
            sha256 = "af456b2dd41c4e82cf54f3e743bc678973d9fe35bd4d3071fa05c7e5333b8482",
            urls = ["https://repo.maven.apache.org/maven2/javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar"],
        )

    if not omit_log4j:
        http_file(
            name = "log4j__log4j__1_2_17",
            downloaded_file_path = "log4j/log4j/1.2.17/log4j-1.2.17.jar",
            sha256 = "1d31696445697720527091754369082a6651bd49781b6005deb94e56753406f9",
            urls = ["https://repo.maven.apache.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar"],
        )

    if not omit_logkit:
        http_file(
            name = "logkit__logkit__1_0_1",
            downloaded_file_path = "logkit/logkit/1.0.1/logkit-1.0.1.jar",
            sha256 = "7ea93b4fc21f3d05ed224b168a025f864db75ddfddc2343e1ec29a386d7501e0",
            urls = ["https://repo.maven.apache.org/maven2/logkit/logkit/1.0.1/logkit-1.0.1.jar"],
        )

    if not omit_cssparser:
        http_file(
            name = "net_sourceforge_cssparser__cssparser__0_9_18",
            downloaded_file_path = "net/sourceforge/cssparser/cssparser/0.9.18/cssparser-0.9.18.jar",
            sha256 = "a2ecbd27997d4a15a1eeed9aa13d861090e0cdbdf2d4543c772a34b7c1e32a8f",
            urls = ["https://repo.maven.apache.org/maven2/net/sourceforge/cssparser/cssparser/0.9.18/cssparser-0.9.18.jar"],
        )

    if not omit_htmlunit:
        http_file(
            name = "net_sourceforge_htmlunit__htmlunit__2_19",
            downloaded_file_path = "net/sourceforge/htmlunit/htmlunit/2.19/htmlunit-2.19.jar",
            sha256 = "10f16ea03bbe6e41489570bf8994bf04f8763c40b28b3229703ae54f3136c843",
            urls = ["https://repo.maven.apache.org/maven2/net/sourceforge/htmlunit/htmlunit/2.19/htmlunit-2.19.jar"],
        )

    if not omit_htmlunit_core_js:
        http_file(
            name = "net_sourceforge_htmlunit__htmlunit_core_js__2_17",
            downloaded_file_path = "net/sourceforge/htmlunit/htmlunit-core-js/2.17/htmlunit-core-js-2.17.jar",
            sha256 = "32fd749af1599ab0daf22b60cbe97b6792cb9fe8b4220496a3adb667e58a5c3c",
            urls = ["https://repo.maven.apache.org/maven2/net/sourceforge/htmlunit/htmlunit-core-js/2.17/htmlunit-core-js-2.17.jar"],
        )

    if not omit_nekohtml:
        http_file(
            name = "net_sourceforge_nekohtml__nekohtml__1_9_22",
            downloaded_file_path = "net/sourceforge/nekohtml/nekohtml/1.9.22/nekohtml-1.9.22.jar",
            sha256 = "452978e8b6667c7b8357fd3f0a2f2f405e4560a7148143a69181735da5d19045",
            urls = ["https://repo.maven.apache.org/maven2/net/sourceforge/nekohtml/nekohtml/1.9.22/nekohtml-1.9.22.jar"],
        )

    if not omit_commons_lang3:
        http_file(
            name = "org_apache_commons__commons_lang3__3_4",
            downloaded_file_path = "org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar",
            sha256 = "734c8356420cc8e30c795d64fd1fcd5d44ea9d90342a2cc3262c5158fbc6d98b",
            urls = ["https://repo.maven.apache.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar"],
        )

    if not omit_httpclient:
        http_file(
            name = "org_apache_httpcomponents__httpclient__4_5_1",
            downloaded_file_path = "org/apache/httpcomponents/httpclient/4.5.1/httpclient-4.5.1.jar",
            sha256 = "0ba1a340188f33408632cedbe25d6fe17c1458bde17680a06cd6f6a69476ff74",
            urls = ["https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.1/httpclient-4.5.1.jar"],
        )

    if not omit_httpcore:
        http_file(
            name = "org_apache_httpcomponents__httpcore__4_4_3",
            downloaded_file_path = "org/apache/httpcomponents/httpcore/4.4.3/httpcore-4.4.3.jar",
            sha256 = "e4ce096fab656865f0d78d88887377111fb2f3bcd5004c1cddbc899987f32b5e",
            urls = ["https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.3/httpcore-4.4.3.jar"],
        )

    if not omit_httpmime:
        http_file(
            name = "org_apache_httpcomponents__httpmime__4_5_1",
            downloaded_file_path = "org/apache/httpcomponents/httpmime/4.5.1/httpmime-4.5.1.jar",
            sha256 = "8376801929b82e1d64cbf554abc60be94cfe039a874f8e6f371d06dbd97b99df",
            urls = ["https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpmime/4.5.1/httpmime-4.5.1.jar"],
        )

    if not omit_tomcat_jasper:
        http_file(
            name = "org_apache_tomcat__tomcat_jasper__8_0_9",
            downloaded_file_path = "org/apache/tomcat/tomcat-jasper/8.0.9/tomcat-jasper-8.0.9.jar",
            sha256 = "046aee47a9231c40d7f89c9a9789a24e16eec0bcd41689b4b6bcf88e6b179760",
            urls = ["https://repo.maven.apache.org/maven2/org/apache/tomcat/tomcat-jasper/8.0.9/tomcat-jasper-8.0.9.jar"],
        )

    if not omit_tomcat_jasper_el:
        http_file(
            name = "org_apache_tomcat__tomcat_jasper_el__8_0_9",
            downloaded_file_path = "org/apache/tomcat/tomcat-jasper-el/8.0.9/tomcat-jasper-el-8.0.9.jar",
            sha256 = "e9e67cfda7a74c0c2ac989e98cc814937d85e5deaae40290f61a1d2a700c1ec0",
            urls = ["https://repo.maven.apache.org/maven2/org/apache/tomcat/tomcat-jasper-el/8.0.9/tomcat-jasper-el-8.0.9.jar"],
        )

    if not omit_jetty_schemas:
        http_file(
            name = "org_eclipse_jetty_toolchain__jetty_schemas__3_1_m0",
            downloaded_file_path = "org/eclipse/jetty/toolchain/jetty-schemas/3.1.M0/jetty-schemas-3.1.M0.jar",
            sha256 = "bb94452226bf103848614948c88f44d1057c2d9203d53affc1c9057a16223907",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/toolchain/jetty-schemas/3.1.M0/jetty-schemas-3.1.M0.jar"],
        )

    if not omit_websocket_api:
        http_file(
            name = "org_eclipse_jetty_websocket__websocket_api__9_2_13_v20150730",
            downloaded_file_path = "org/eclipse/jetty/websocket/websocket-api/9.2.13.v20150730/websocket-api-9.2.13.v20150730.jar",
            sha256 = "09da128275944e340a4a3357ad59e125df11a5cac0e63a2d1a0a098fa0463a11",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/websocket/websocket-api/9.2.13.v20150730/websocket-api-9.2.13.v20150730.jar"],
        )

    if not omit_websocket_client:
        http_file(
            name = "org_eclipse_jetty_websocket__websocket_client__9_2_13_v20150730",
            downloaded_file_path = "org/eclipse/jetty/websocket/websocket-client/9.2.13.v20150730/websocket-client-9.2.13.v20150730.jar",
            sha256 = "030c1582c768809078ffd604c687ec3dbf4ad207dfc292fd4a1062bd5a35f556",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/websocket/websocket-client/9.2.13.v20150730/websocket-client-9.2.13.v20150730.jar"],
        )

    if not omit_websocket_common:
        http_file(
            name = "org_eclipse_jetty_websocket__websocket_common__9_2_13_v20150730",
            downloaded_file_path = "org/eclipse/jetty/websocket/websocket-common/9.2.13.v20150730/websocket-common-9.2.13.v20150730.jar",
            sha256 = "861d99ac74d5f6a8ccf22e0c060c6eb0a0142e6327149ff298a7452b66ea5db6",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/websocket/websocket-common/9.2.13.v20150730/websocket-common-9.2.13.v20150730.jar"],
        )

    if not omit_apache_jsp:
        http_file(
            name = "org_eclipse_jetty__apache_jsp__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/apache-jsp/9.2.14.v20151106/apache-jsp-9.2.14.v20151106.jar",
            sha256 = "a9634bc410be3b8d1f3849429d08a1c3ecaad79a023cbe90ae62f8b493d5f4e2",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/apache-jsp/9.2.14.v20151106/apache-jsp-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_annotations:
        http_file(
            name = "org_eclipse_jetty__jetty_annotations__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-annotations/9.2.14.v20151106/jetty-annotations-9.2.14.v20151106.jar",
            sha256 = "d2e7774a3a15d6169d728c7f42b0e2b8a6dd3ed77dc776a2352e7a5b9b5f3a6b",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-annotations/9.2.14.v20151106/jetty-annotations-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_continuation:
        http_file(
            name = "org_eclipse_jetty__jetty_continuation__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-continuation/9.2.14.v20151106/jetty-continuation-9.2.14.v20151106.jar",
            sha256 = "3e60ef633d4110f020a4d6207966a4884424a65067eea5a041d1eac1066bc453",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-continuation/9.2.14.v20151106/jetty-continuation-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_http:
        http_file(
            name = "org_eclipse_jetty__jetty_http__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-http/9.2.14.v20151106/jetty-http-9.2.14.v20151106.jar",
            sha256 = "635e5912cb14dfaefdf8fc7369fe96baa8d888b691a00290603d8bda41b80d61",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-http/9.2.14.v20151106/jetty-http-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_io:
        http_file(
            name = "org_eclipse_jetty__jetty_io__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-io/9.2.14.v20151106/jetty-io-9.2.14.v20151106.jar",
            sha256 = "16f2d49f497e5e42c92d96618adee2626af5ba1ac927589529b6fd9a92266d3a",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-io/9.2.14.v20151106/jetty-io-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_jmx:
        http_file(
            name = "org_eclipse_jetty__jetty_jmx__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-jmx/9.2.14.v20151106/jetty-jmx-9.2.14.v20151106.jar",
            sha256 = "48c06b8fc16b524bcd180838d064076196aea024de6d89e2bcf2fd1a085ba5e7",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-jmx/9.2.14.v20151106/jetty-jmx-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_jndi:
        http_file(
            name = "org_eclipse_jetty__jetty_jndi__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-jndi/9.2.14.v20151106/jetty-jndi-9.2.14.v20151106.jar",
            sha256 = "9181d263612c457437d6f7e8470588eed862cdf1f08eec808d6577503bec5653",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-jndi/9.2.14.v20151106/jetty-jndi-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_plus:
        http_file(
            name = "org_eclipse_jetty__jetty_plus__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-plus/9.2.14.v20151106/jetty-plus-9.2.14.v20151106.jar",
            sha256 = "6c2c574507c693ad76fde1500b9090baccf346313ed342d98c4104234149bdf8",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-plus/9.2.14.v20151106/jetty-plus-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_security:
        http_file(
            name = "org_eclipse_jetty__jetty_security__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-security/9.2.14.v20151106/jetty-security-9.2.14.v20151106.jar",
            sha256 = "1810b2395f6f0717aef296c6c2d6f9504deb2076ef68b3312e1644c0b9cc3921",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-security/9.2.14.v20151106/jetty-security-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_server:
        http_file(
            name = "org_eclipse_jetty__jetty_server__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-server/9.2.14.v20151106/jetty-server-9.2.14.v20151106.jar",
            sha256 = "bedeec57bccd1680c8ec71ea0071d4e6946fd8152668b69ab753b34729993e8b",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-server/9.2.14.v20151106/jetty-server-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_servlet:
        http_file(
            name = "org_eclipse_jetty__jetty_servlet__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-servlet/9.2.14.v20151106/jetty-servlet-9.2.14.v20151106.jar",
            sha256 = "ac13cca38e1541647a2fbe726a871dc5c22a757c0d8900c08d77302e414a725f",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-servlet/9.2.14.v20151106/jetty-servlet-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_servlets:
        http_file(
            name = "org_eclipse_jetty__jetty_servlets__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-servlets/9.2.14.v20151106/jetty-servlets-9.2.14.v20151106.jar",
            sha256 = "2a6e50cc48cfb5de3c3cf15176e229861ac7bc5e03285408078658298b75c421",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-servlets/9.2.14.v20151106/jetty-servlets-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_util:
        http_file(
            name = "org_eclipse_jetty__jetty_util__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-util/9.2.14.v20151106/jetty-util-9.2.14.v20151106.jar",
            sha256 = "277a2cc734139f620bf5c88c09af2f0328b0114f6fad52776abfbcd8d37166ce",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-util/9.2.14.v20151106/jetty-util-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_webapp:
        http_file(
            name = "org_eclipse_jetty__jetty_webapp__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-webapp/9.2.14.v20151106/jetty-webapp-9.2.14.v20151106.jar",
            sha256 = "1865f0d3c0edc8727eb4e4d1f9c808cec039095e95cfff45816ea6f7059e6fc5",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-webapp/9.2.14.v20151106/jetty-webapp-9.2.14.v20151106.jar"],
        )

    if not omit_jetty_xml:
        http_file(
            name = "org_eclipse_jetty__jetty_xml__9_2_14_v20151106",
            downloaded_file_path = "org/eclipse/jetty/jetty-xml/9.2.14.v20151106/jetty-xml-9.2.14.v20151106.jar",
            sha256 = "3d13667a02e331c86b124d020338ec5cc901a7986ddf9fd99782578fe77a0459",
            urls = ["https://repo.maven.apache.org/maven2/org/eclipse/jetty/jetty-xml/9.2.14.v20151106/jetty-xml-9.2.14.v20151106.jar"],
        )

    if not omit_apache_el:
        http_file(
            name = "org_mortbay_jasper__apache_el__8_0_9_m3",
            downloaded_file_path = "org/mortbay/jasper/apache-el/8.0.9.M3/apache-el-8.0.9.M3.jar",
            sha256 = "e55df966c864f749becd6f9fbd896e062935650a99880438ffef7b2614d59fc5",
            urls = ["https://repo.maven.apache.org/maven2/org/mortbay/jasper/apache-el/8.0.9.M3/apache-el-8.0.9.M3.jar"],
        )

    if not omit_org_mortbay_jasper__apache_jsp:
        http_file(
            name = "org_mortbay_jasper__apache_jsp__8_0_9_m3",
            downloaded_file_path = "org/mortbay/jasper/apache-jsp/8.0.9.M3/apache-jsp-8.0.9.M3.jar",
            sha256 = "0c154c190b7e75530e7b0b015a370343e9e5ae80550d7d1e8c12f33725df66ec",
            urls = ["https://repo.maven.apache.org/maven2/org/mortbay/jasper/apache-jsp/8.0.9.M3/apache-jsp-8.0.9.M3.jar"],
        )

    if not omit_asm:
        http_file(
            name = "org_ow2_asm__asm__7_1",
            downloaded_file_path = "org/ow2/asm/asm/7.1/asm-7.1.jar",
            sha256 = "4ab2fa2b6d2cc9ccb1eaa05ea329c407b47b13ed2915f62f8c4b8cc96258d4de",
            urls = ["https://repo.maven.apache.org/maven2/org/ow2/asm/asm/7.1/asm-7.1.jar"],
        )

    if not omit_asm_analysis:
        http_file(
            name = "org_ow2_asm__asm_analysis__7_1",
            downloaded_file_path = "org/ow2/asm/asm-analysis/7.1/asm-analysis-7.1.jar",
            sha256 = "4612c0511a63db2a2570f07ad1959e19ed8eb703e4114da945cb85682519a55c",
            urls = ["https://repo.maven.apache.org/maven2/org/ow2/asm/asm-analysis/7.1/asm-analysis-7.1.jar"],
        )

    if not omit_asm_commons:
        http_file(
            name = "org_ow2_asm__asm_commons__7_1",
            downloaded_file_path = "org/ow2/asm/asm-commons/7.1/asm-commons-7.1.jar",
            sha256 = "e5590489d8f1984d85bfeabd3b17374c59c28ae09d48ec4a0ebbd01959ecd358",
            urls = ["https://repo.maven.apache.org/maven2/org/ow2/asm/asm-commons/7.1/asm-commons-7.1.jar"],
        )

    if not omit_asm_tree:
        http_file(
            name = "org_ow2_asm__asm_tree__7_1",
            downloaded_file_path = "org/ow2/asm/asm-tree/7.1/asm-tree-7.1.jar",
            sha256 = "c0e82b220b0a52c71c7ca2a58c99a2530696c7b58b173052b9d48fe3efb10073",
            urls = ["https://repo.maven.apache.org/maven2/org/ow2/asm/asm-tree/7.1/asm-tree-7.1.jar"],
        )

    if not omit_asm_util:
        http_file(
            name = "org_ow2_asm__asm_util__7_1",
            downloaded_file_path = "org/ow2/asm/asm-util/7.1/asm-util-7.1.jar",
            sha256 = "a24485517596ae1003dcf2329c044a2a861e5c25d4476a695ccaacf560c74d1a",
            urls = ["https://repo.maven.apache.org/maven2/org/ow2/asm/asm-util/7.1/asm-util-7.1.jar"],
        )

    if not omit_gwt_dev:
        http_file(
            name = "org_realityforge_com_google_gwt__gwt_dev__2_8_2_v20191108",
            downloaded_file_path = "org/realityforge/com/google/gwt/gwt-dev/2.8.2-v20191108/gwt-dev-2.8.2-v20191108.jar",
            sha256 = "880ee711e4189c9516e3203280fd7966fbd6f2a66790132311cad0e2489a5f37",
            urls = ["https://repo.maven.apache.org/maven2/org/realityforge/com/google/gwt/gwt-dev/2.8.2-v20191108/gwt-dev-2.8.2-v20191108.jar"],
        )

    if not omit_sac:
        http_file(
            name = "org_w3c_css__sac__1_3",
            downloaded_file_path = "org/w3c/css/sac/1.3/sac-1.3.jar",
            sha256 = "003785669f921aafe4f137468dd20a01a36111e94fd7449f26c16e7924d82d23",
            urls = ["https://repo.maven.apache.org/maven2/org/w3c/css/sac/1.3/sac-1.3.jar"],
        )

    if not omit_tapestry:
        http_file(
            name = "tapestry__tapestry__4_0_2",
            downloaded_file_path = "tapestry/tapestry/4.0.2/tapestry-4.0.2.jar",
            sha256 = "16dfc5b6b322bb0734b80e89d77fbeb987c809002fe59d52d9707a035949b107",
            urls = ["https://repo.maven.apache.org/maven2/tapestry/tapestry/4.0.2/tapestry-4.0.2.jar"],
        )

    if not omit_serializer:
        http_file(
            name = "xalan__serializer__2_7_2",
            downloaded_file_path = "xalan/serializer/2.7.2/serializer-2.7.2.jar",
            sha256 = "e8f5b4340d3b12a0cfa44ac2db4be4e0639e479ae847df04c4ed8b521734bb4a",
            urls = ["https://repo.maven.apache.org/maven2/xalan/serializer/2.7.2/serializer-2.7.2.jar"],
        )

    if not omit_xalan:
        http_file(
            name = "xalan__xalan__2_7_2",
            downloaded_file_path = "xalan/xalan/2.7.2/xalan-2.7.2.jar",
            sha256 = "a44bd80e82cb0f4cfac0dac8575746223802514e3cec9dc75235bc0de646af14",
            urls = ["https://repo.maven.apache.org/maven2/xalan/xalan/2.7.2/xalan-2.7.2.jar"],
        )

    if not omit_xml_apis:
        http_file(
            name = "xml_apis__xml_apis__1_3_04",
            downloaded_file_path = "xml-apis/xml-apis/1.3.04/xml-apis-1.3.04.jar",
            sha256 = "d404aa881eb9c5f7a4fb546e84ea11506cd417a72b5972e88eff17f43f9f8a64",
            urls = ["https://repo.maven.apache.org/maven2/xml-apis/xml-apis/1.3.04/xml-apis-1.3.04.jar"],
        )

def generate_targets(
        omit_ant = False,
        omit_avalon_framework = False,
        omit_colt = False,
        omit_jsr305 = False,
        omit_gson = False,
        omit_icu4j = False,
        omit_commons_codec = False,
        omit_commons_collections = False,
        omit_commons_io = False,
        omit_commons_logging = False,
        omit_javax_annotation_api = False,
        omit_javax_servlet_api = False,
        omit_log4j = False,
        omit_logkit = False,
        omit_cssparser = False,
        omit_htmlunit = False,
        omit_htmlunit_core_js = False,
        omit_nekohtml = False,
        omit_commons_lang3 = False,
        omit_httpclient = False,
        omit_httpcore = False,
        omit_httpmime = False,
        omit_tomcat_jasper = False,
        omit_tomcat_jasper_el = False,
        omit_jetty_schemas = False,
        omit_websocket_api = False,
        omit_websocket_client = False,
        omit_websocket_common = False,
        omit_apache_jsp = False,
        omit_jetty_annotations = False,
        omit_jetty_continuation = False,
        omit_jetty_http = False,
        omit_jetty_io = False,
        omit_jetty_jmx = False,
        omit_jetty_jndi = False,
        omit_jetty_plus = False,
        omit_jetty_security = False,
        omit_jetty_server = False,
        omit_jetty_servlet = False,
        omit_jetty_servlets = False,
        omit_jetty_util = False,
        omit_jetty_webapp = False,
        omit_jetty_xml = False,
        omit_apache_el = False,
        omit_org_mortbay_jasper__apache_jsp = False,
        omit_asm = False,
        omit_asm_analysis = False,
        omit_asm_commons = False,
        omit_asm_tree = False,
        omit_asm_util = False,
        omit_gwt_dev = False,
        omit_sac = False,
        omit_tapestry = False,
        omit_serializer = False,
        omit_xalan = False,
        omit_xml_apis = False):
    """
        Macro to define targets for dependencies.
    """

    if not omit_ant:
        native.alias(
            name = "ant",
            actual = ":ant__ant__1_6_5",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "ant__ant__1_6_5",
            jars = ["@ant__ant__1_6_5//file"],
            tags = ["maven_coordinates=ant:ant:1.6.5"],
            visibility = ["//visibility:private"],
            deps = [":xml_apis"],
        )

    if not omit_avalon_framework:
        native.alias(
            name = "avalon_framework",
            actual = ":avalon_framework__avalon_framework__4_1_5",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "avalon_framework__avalon_framework__4_1_5",
            jars = ["@avalon_framework__avalon_framework__4_1_5//file"],
            tags = ["maven_coordinates=avalon-framework:avalon-framework:4.1.5"],
            visibility = ["//visibility:private"],
        )

    if not omit_colt:
        native.alias(
            name = "colt",
            actual = ":colt__colt__1_2_0",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "colt__colt__1_2_0",
            jars = ["@colt__colt__1_2_0//file"],
            tags = ["maven_coordinates=colt:colt:1.2.0"],
            visibility = ["//visibility:private"],
        )

    if not omit_jsr305:
        native.alias(
            name = "jsr305",
            actual = ":com_google_code_findbugs__jsr305__1_3_9",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "com_google_code_findbugs__jsr305__1_3_9",
            jars = ["@com_google_code_findbugs__jsr305__1_3_9//file"],
            tags = ["maven_coordinates=com.google.code.findbugs:jsr305:1.3.9"],
            visibility = ["//visibility:private"],
        )

    if not omit_gson:
        native.alias(
            name = "gson",
            actual = ":com_google_code_gson__gson__2_6_2",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "com_google_code_gson__gson__2_6_2",
            jars = ["@com_google_code_gson__gson__2_6_2//file"],
            tags = ["maven_coordinates=com.google.code.gson:gson:2.6.2"],
            visibility = ["//visibility:private"],
        )

    if not omit_icu4j:
        native.alias(
            name = "icu4j",
            actual = ":com_ibm_icu__icu4j__63_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "com_ibm_icu__icu4j__63_1",
            jars = ["@com_ibm_icu__icu4j__63_1//file"],
            tags = ["maven_coordinates=com.ibm.icu:icu4j:63.1"],
            visibility = ["//visibility:private"],
        )

    if not omit_commons_codec:
        native.alias(
            name = "commons_codec",
            actual = ":commons_codec__commons_codec__1_10",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "commons_codec__commons_codec__1_10",
            jars = ["@commons_codec__commons_codec__1_10//file"],
            tags = ["maven_coordinates=commons-codec:commons-codec:1.10"],
            visibility = ["//visibility:private"],
        )

    if not omit_commons_collections:
        native.alias(
            name = "commons_collections",
            actual = ":commons_collections__commons_collections__3_2_2",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "commons_collections__commons_collections__3_2_2",
            jars = ["@commons_collections__commons_collections__3_2_2//file"],
            tags = ["maven_coordinates=commons-collections:commons-collections:3.2.2"],
            visibility = ["//visibility:private"],
        )

    if not omit_commons_io:
        native.alias(
            name = "commons_io",
            actual = ":commons_io__commons_io__2_4",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "commons_io__commons_io__2_4",
            jars = ["@commons_io__commons_io__2_4//file"],
            tags = ["maven_coordinates=commons-io:commons-io:2.4"],
            visibility = ["//visibility:private"],
        )

    if not omit_commons_logging:
        native.alias(
            name = "commons_logging",
            actual = ":commons_logging__commons_logging__1_2",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "commons_logging__commons_logging__1_2",
            jars = ["@commons_logging__commons_logging__1_2//file"],
            tags = ["maven_coordinates=commons-logging:commons-logging:1.2"],
            visibility = ["//visibility:private"],
        )

    if not omit_javax_annotation_api:
        native.alias(
            name = "javax_annotation_api",
            actual = ":javax_annotation__javax_annotation_api__1_2",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "javax_annotation__javax_annotation_api__1_2",
            jars = ["@javax_annotation__javax_annotation_api__1_2//file"],
            tags = ["maven_coordinates=javax.annotation:javax.annotation-api:1.2"],
            visibility = ["//visibility:private"],
        )

    if not omit_javax_servlet_api:
        native.alias(
            name = "javax_servlet_api",
            actual = ":javax_servlet__javax_servlet_api__3_1_0",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "javax_servlet__javax_servlet_api__3_1_0",
            jars = ["@javax_servlet__javax_servlet_api__3_1_0//file"],
            tags = ["maven_coordinates=javax.servlet:javax.servlet-api:3.1.0"],
            visibility = ["//visibility:private"],
        )

    if not omit_log4j:
        native.alias(
            name = "log4j",
            actual = ":log4j__log4j__1_2_17",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "log4j__log4j__1_2_17",
            jars = ["@log4j__log4j__1_2_17//file"],
            tags = ["maven_coordinates=log4j:log4j:1.2.17"],
            visibility = ["//visibility:private"],
        )

    if not omit_logkit:
        native.alias(
            name = "logkit",
            actual = ":logkit__logkit__1_0_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "logkit__logkit__1_0_1",
            jars = ["@logkit__logkit__1_0_1//file"],
            tags = ["maven_coordinates=logkit:logkit:1.0.1"],
            visibility = ["//visibility:private"],
        )

    if not omit_cssparser:
        native.alias(
            name = "cssparser",
            actual = ":net_sourceforge_cssparser__cssparser__0_9_18",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "net_sourceforge_cssparser__cssparser__0_9_18",
            jars = ["@net_sourceforge_cssparser__cssparser__0_9_18//file"],
            tags = ["maven_coordinates=net.sourceforge.cssparser:cssparser:0.9.18"],
            visibility = ["//visibility:private"],
            deps = [":sac"],
        )

    if not omit_htmlunit:
        native.alias(
            name = "htmlunit",
            actual = ":net_sourceforge_htmlunit__htmlunit__2_19",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "net_sourceforge_htmlunit__htmlunit__2_19",
            jars = ["@net_sourceforge_htmlunit__htmlunit__2_19//file"],
            tags = ["maven_coordinates=net.sourceforge.htmlunit:htmlunit:2.19"],
            visibility = ["//visibility:private"],
            deps = [
                ":commons_codec",
                ":commons_collections",
                ":commons_io",
                ":commons_lang3",
                ":commons_logging",
                ":cssparser",
                ":htmlunit_core_js",
                ":httpclient",
                ":httpmime",
                ":nekohtml",
                ":websocket_client",
                ":xalan",
            ],
        )

    if not omit_htmlunit_core_js:
        native.alias(
            name = "htmlunit_core_js",
            actual = ":net_sourceforge_htmlunit__htmlunit_core_js__2_17",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "net_sourceforge_htmlunit__htmlunit_core_js__2_17",
            jars = ["@net_sourceforge_htmlunit__htmlunit_core_js__2_17//file"],
            tags = ["maven_coordinates=net.sourceforge.htmlunit:htmlunit-core-js:2.17"],
            visibility = ["//visibility:private"],
        )

    if not omit_nekohtml:
        native.alias(
            name = "nekohtml",
            actual = ":net_sourceforge_nekohtml__nekohtml__1_9_22",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "net_sourceforge_nekohtml__nekohtml__1_9_22",
            jars = ["@net_sourceforge_nekohtml__nekohtml__1_9_22//file"],
            tags = ["maven_coordinates=net.sourceforge.nekohtml:nekohtml:1.9.22"],
            visibility = ["//visibility:private"],
        )

    if not omit_commons_lang3:
        native.alias(
            name = "commons_lang3",
            actual = ":org_apache_commons__commons_lang3__3_4",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_apache_commons__commons_lang3__3_4",
            jars = ["@org_apache_commons__commons_lang3__3_4//file"],
            tags = ["maven_coordinates=org.apache.commons:commons-lang3:3.4"],
            visibility = ["//visibility:private"],
        )

    if not omit_httpclient:
        native.alias(
            name = "httpclient",
            actual = ":org_apache_httpcomponents__httpclient__4_5_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_apache_httpcomponents__httpclient__4_5_1",
            jars = ["@org_apache_httpcomponents__httpclient__4_5_1//file"],
            tags = ["maven_coordinates=org.apache.httpcomponents:httpclient:4.5.1"],
            visibility = ["//visibility:private"],
            deps = [
                ":commons_codec",
                ":commons_logging",
                ":httpcore",
            ],
        )

    if not omit_httpcore:
        native.alias(
            name = "httpcore",
            actual = ":org_apache_httpcomponents__httpcore__4_4_3",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_apache_httpcomponents__httpcore__4_4_3",
            jars = ["@org_apache_httpcomponents__httpcore__4_4_3//file"],
            tags = ["maven_coordinates=org.apache.httpcomponents:httpcore:4.4.3"],
            visibility = ["//visibility:private"],
        )

    if not omit_httpmime:
        native.alias(
            name = "httpmime",
            actual = ":org_apache_httpcomponents__httpmime__4_5_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_apache_httpcomponents__httpmime__4_5_1",
            jars = ["@org_apache_httpcomponents__httpmime__4_5_1//file"],
            tags = ["maven_coordinates=org.apache.httpcomponents:httpmime:4.5.1"],
            visibility = ["//visibility:private"],
            deps = [":httpclient"],
        )

    if not omit_tomcat_jasper:
        native.alias(
            name = "tomcat_jasper",
            actual = ":org_apache_tomcat__tomcat_jasper__8_0_9",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_apache_tomcat__tomcat_jasper__8_0_9",
            jars = ["@org_apache_tomcat__tomcat_jasper__8_0_9//file"],
            tags = ["maven_coordinates=org.apache.tomcat:tomcat-jasper:8.0.9"],
            visibility = ["//visibility:private"],
        )

    if not omit_tomcat_jasper_el:
        native.alias(
            name = "tomcat_jasper_el",
            actual = ":org_apache_tomcat__tomcat_jasper_el__8_0_9",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_apache_tomcat__tomcat_jasper_el__8_0_9",
            jars = ["@org_apache_tomcat__tomcat_jasper_el__8_0_9//file"],
            tags = ["maven_coordinates=org.apache.tomcat:tomcat-jasper-el:8.0.9"],
            visibility = ["//visibility:private"],
        )

    if not omit_jetty_schemas:
        native.alias(
            name = "jetty_schemas",
            actual = ":org_eclipse_jetty_toolchain__jetty_schemas__3_1_m0",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty_toolchain__jetty_schemas__3_1_m0",
            jars = ["@org_eclipse_jetty_toolchain__jetty_schemas__3_1_m0//file"],
            tags = ["maven_coordinates=org.eclipse.jetty.toolchain:jetty-schemas:3.1.M0"],
            visibility = ["//visibility:private"],
        )

    if not omit_websocket_api:
        native.alias(
            name = "websocket_api",
            actual = ":org_eclipse_jetty_websocket__websocket_api__9_2_13_v20150730",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty_websocket__websocket_api__9_2_13_v20150730",
            jars = ["@org_eclipse_jetty_websocket__websocket_api__9_2_13_v20150730//file"],
            tags = ["maven_coordinates=org.eclipse.jetty.websocket:websocket-api:9.2.13.v20150730"],
            visibility = ["//visibility:private"],
        )

    if not omit_websocket_client:
        native.alias(
            name = "websocket_client",
            actual = ":org_eclipse_jetty_websocket__websocket_client__9_2_13_v20150730",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty_websocket__websocket_client__9_2_13_v20150730",
            jars = ["@org_eclipse_jetty_websocket__websocket_client__9_2_13_v20150730//file"],
            tags = ["maven_coordinates=org.eclipse.jetty.websocket:websocket-client:9.2.13.v20150730"],
            visibility = ["//visibility:private"],
            deps = [
                ":jetty_io",
                ":jetty_util",
                ":websocket_common",
            ],
        )

    if not omit_websocket_common:
        native.alias(
            name = "websocket_common",
            actual = ":org_eclipse_jetty_websocket__websocket_common__9_2_13_v20150730",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty_websocket__websocket_common__9_2_13_v20150730",
            jars = ["@org_eclipse_jetty_websocket__websocket_common__9_2_13_v20150730//file"],
            tags = ["maven_coordinates=org.eclipse.jetty.websocket:websocket-common:9.2.13.v20150730"],
            visibility = ["//visibility:private"],
            deps = [
                ":jetty_io",
                ":jetty_util",
                ":websocket_api",
            ],
        )

    if not omit_apache_jsp:
        native.alias(
            name = "apache_jsp",
            actual = ":org_eclipse_jetty__apache_jsp__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__apache_jsp__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__apache_jsp__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:apache-jsp:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [
                ":javax_servlet_api",
                ":jetty_schemas",
                ":jetty_server",
                ":jetty_util",
                ":org_mortbay_jasper__apache_jsp",
            ],
        )

    if not omit_jetty_annotations:
        native.alias(
            name = "jetty_annotations",
            actual = ":org_eclipse_jetty__jetty_annotations__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_annotations__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_annotations__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-annotations:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [
                ":asm",
                ":asm_commons",
                ":javax_annotation_api",
                ":jetty_plus",
                ":jetty_webapp",
            ],
        )

    if not omit_jetty_continuation:
        native.alias(
            name = "jetty_continuation",
            actual = ":org_eclipse_jetty__jetty_continuation__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_continuation__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_continuation__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-continuation:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
        )

    if not omit_jetty_http:
        native.alias(
            name = "jetty_http",
            actual = ":org_eclipse_jetty__jetty_http__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_http__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_http__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-http:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [":jetty_util"],
        )

    if not omit_jetty_io:
        native.alias(
            name = "jetty_io",
            actual = ":org_eclipse_jetty__jetty_io__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_io__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_io__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-io:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [":jetty_util"],
        )

    if not omit_jetty_jmx:
        native.alias(
            name = "jetty_jmx",
            actual = ":org_eclipse_jetty__jetty_jmx__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_jmx__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_jmx__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-jmx:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
        )

    if not omit_jetty_jndi:
        native.alias(
            name = "jetty_jndi",
            actual = ":org_eclipse_jetty__jetty_jndi__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_jndi__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_jndi__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-jndi:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [":jetty_util"],
        )

    if not omit_jetty_plus:
        native.alias(
            name = "jetty_plus",
            actual = ":org_eclipse_jetty__jetty_plus__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_plus__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_plus__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-plus:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [
                ":jetty_jndi",
                ":jetty_webapp",
            ],
        )

    if not omit_jetty_security:
        native.alias(
            name = "jetty_security",
            actual = ":org_eclipse_jetty__jetty_security__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_security__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_security__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-security:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [":jetty_server"],
        )

    if not omit_jetty_server:
        native.alias(
            name = "jetty_server",
            actual = ":org_eclipse_jetty__jetty_server__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_server__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_server__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-server:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [
                ":javax_servlet_api",
                ":jetty_http",
                ":jetty_io",
            ],
        )

    if not omit_jetty_servlet:
        native.alias(
            name = "jetty_servlet",
            actual = ":org_eclipse_jetty__jetty_servlet__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_servlet__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_servlet__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-servlet:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [":jetty_security"],
        )

    if not omit_jetty_servlets:
        native.alias(
            name = "jetty_servlets",
            actual = ":org_eclipse_jetty__jetty_servlets__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_servlets__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_servlets__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-servlets:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [
                ":jetty_continuation",
                ":jetty_http",
                ":jetty_io",
                ":jetty_util",
            ],
        )

    if not omit_jetty_util:
        native.alias(
            name = "jetty_util",
            actual = ":org_eclipse_jetty__jetty_util__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_util__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_util__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-util:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
        )

    if not omit_jetty_webapp:
        native.alias(
            name = "jetty_webapp",
            actual = ":org_eclipse_jetty__jetty_webapp__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_webapp__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_webapp__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-webapp:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [
                ":jetty_servlet",
                ":jetty_xml",
            ],
        )

    if not omit_jetty_xml:
        native.alias(
            name = "jetty_xml",
            actual = ":org_eclipse_jetty__jetty_xml__9_2_14_v20151106",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_eclipse_jetty__jetty_xml__9_2_14_v20151106",
            jars = ["@org_eclipse_jetty__jetty_xml__9_2_14_v20151106//file"],
            tags = ["maven_coordinates=org.eclipse.jetty:jetty-xml:9.2.14.v20151106"],
            visibility = ["//visibility:private"],
            deps = [":jetty_util"],
        )

    if not omit_apache_el:
        native.alias(
            name = "apache_el",
            actual = ":org_mortbay_jasper__apache_el__8_0_9_m3",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_mortbay_jasper__apache_el__8_0_9_m3",
            jars = ["@org_mortbay_jasper__apache_el__8_0_9_m3//file"],
            tags = ["maven_coordinates=org.mortbay.jasper:apache-el:8.0.9.M3"],
            visibility = ["//visibility:private"],
        )

    if not omit_org_mortbay_jasper__apache_jsp:
        native.alias(
            name = "org_mortbay_jasper__apache_jsp",
            actual = ":org_mortbay_jasper__apache_jsp__8_0_9_m3",
        )
        java_import(
            name = "org_mortbay_jasper__apache_jsp__8_0_9_m3",
            jars = ["@org_mortbay_jasper__apache_jsp__8_0_9_m3//file"],
            tags = ["maven_coordinates=org.mortbay.jasper:apache-jsp:8.0.9.M3"],
            visibility = ["//visibility:private"],
            deps = [
                ":apache_el",
                ":jetty_schemas",
            ],
            exports = [
                ":apache_el",
                ":jetty_schemas",
            ],
        )

    if not omit_asm:
        native.alias(
            name = "asm",
            actual = ":org_ow2_asm__asm__7_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_ow2_asm__asm__7_1",
            jars = ["@org_ow2_asm__asm__7_1//file"],
            tags = ["maven_coordinates=org.ow2.asm:asm:7.1"],
            visibility = ["//visibility:private"],
        )

    if not omit_asm_analysis:
        native.alias(
            name = "asm_analysis",
            actual = ":org_ow2_asm__asm_analysis__7_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_ow2_asm__asm_analysis__7_1",
            jars = ["@org_ow2_asm__asm_analysis__7_1//file"],
            tags = ["maven_coordinates=org.ow2.asm:asm-analysis:7.1"],
            visibility = ["//visibility:private"],
            deps = [":asm_tree"],
        )

    if not omit_asm_commons:
        native.alias(
            name = "asm_commons",
            actual = ":org_ow2_asm__asm_commons__7_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_ow2_asm__asm_commons__7_1",
            jars = ["@org_ow2_asm__asm_commons__7_1//file"],
            tags = ["maven_coordinates=org.ow2.asm:asm-commons:7.1"],
            visibility = ["//visibility:private"],
            deps = [
                ":asm",
                ":asm_analysis",
                ":asm_tree",
            ],
        )

    if not omit_asm_tree:
        native.alias(
            name = "asm_tree",
            actual = ":org_ow2_asm__asm_tree__7_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_ow2_asm__asm_tree__7_1",
            jars = ["@org_ow2_asm__asm_tree__7_1//file"],
            tags = ["maven_coordinates=org.ow2.asm:asm-tree:7.1"],
            visibility = ["//visibility:private"],
            deps = [":asm"],
        )

    if not omit_asm_util:
        native.alias(
            name = "asm_util",
            actual = ":org_ow2_asm__asm_util__7_1",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_ow2_asm__asm_util__7_1",
            jars = ["@org_ow2_asm__asm_util__7_1//file"],
            tags = ["maven_coordinates=org.ow2.asm:asm-util:7.1"],
            visibility = ["//visibility:private"],
            deps = [
                ":asm",
                ":asm_analysis",
                ":asm_tree",
            ],
        )

    if not omit_gwt_dev:
        native.alias(
            name = "gwt_dev",
            actual = ":org_realityforge_com_google_gwt__gwt_dev__2_8_2_v20191108",
        )
        java_import(
            name = "org_realityforge_com_google_gwt__gwt_dev__2_8_2_v20191108",
            jars = ["@org_realityforge_com_google_gwt__gwt_dev__2_8_2_v20191108//file"],
            tags = ["maven_coordinates=org.realityforge.com.google.gwt:gwt-dev:2.8.2-v20191108"],
            visibility = ["//visibility:private"],
            deps = [
                ":ant",
                ":apache_jsp",
                ":asm",
                ":asm_commons",
                ":asm_util",
                ":colt",
                ":commons_collections",
                ":commons_io",
                ":gson",
                ":htmlunit",
                ":icu4j",
                ":jetty_annotations",
                ":jetty_servlets",
                ":jetty_webapp",
                ":jsr305",
                ":tapestry",
            ],
            exports = [
                ":ant",
                ":apache_jsp",
                ":asm",
                ":asm_commons",
                ":asm_util",
                ":colt",
                ":commons_collections",
                ":commons_io",
                ":gson",
                ":htmlunit",
                ":icu4j",
                ":jetty_annotations",
                ":jetty_servlets",
                ":jetty_webapp",
                ":jsr305",
                ":tapestry",
            ],
        )

    if not omit_sac:
        native.alias(
            name = "sac",
            actual = ":org_w3c_css__sac__1_3",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "org_w3c_css__sac__1_3",
            jars = ["@org_w3c_css__sac__1_3//file"],
            tags = ["maven_coordinates=org.w3c.css:sac:1.3"],
            visibility = ["//visibility:private"],
        )

    if not omit_tapestry:
        native.alias(
            name = "tapestry",
            actual = ":tapestry__tapestry__4_0_2",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "tapestry__tapestry__4_0_2",
            jars = ["@tapestry__tapestry__4_0_2//file"],
            tags = ["maven_coordinates=tapestry:tapestry:4.0.2"],
            visibility = ["//visibility:private"],
        )

    if not omit_serializer:
        native.alias(
            name = "serializer",
            actual = ":xalan__serializer__2_7_2",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "xalan__serializer__2_7_2",
            jars = ["@xalan__serializer__2_7_2//file"],
            tags = ["maven_coordinates=xalan:serializer:2.7.2"],
            visibility = ["//visibility:private"],
            deps = [":xml_apis"],
        )

    if not omit_xalan:
        native.alias(
            name = "xalan",
            actual = ":xalan__xalan__2_7_2",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "xalan__xalan__2_7_2",
            jars = ["@xalan__xalan__2_7_2//file"],
            tags = ["maven_coordinates=xalan:xalan:2.7.2"],
            visibility = ["//visibility:private"],
            deps = [":serializer"],
        )

    if not omit_xml_apis:
        native.alias(
            name = "xml_apis",
            actual = ":xml_apis__xml_apis__1_3_04",
            visibility = ["//visibility:private"],
        )
        java_import(
            name = "xml_apis__xml_apis__1_3_04",
            jars = ["@xml_apis__xml_apis__1_3_04//file"],
            tags = ["maven_coordinates=xml-apis:xml-apis:1.3.04"],
            visibility = ["//visibility:private"],
        )
