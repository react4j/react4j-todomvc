workspace(name = "org_realityforge_react4j_todomvc")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_java",
    sha256 = "6b753b0c02b7fc1902e39f4f330c5958a42f31ea7832c11c11e5c11306292c27",
    strip_prefix = "rules_java-0.1.1",
    urls = ["https://github.com/bazelbuild/rules_java/archive/0.1.1.tar.gz"],
)

load("//thirdparty:dependencies.bzl", "generate_workspace_rules")

generate_workspace_rules()

http_archive(
    name = "rules_java",
    sha256 = "220b87d8cfabd22d1c6d8e3cdb4249abd4c93dcc152e0667db061fb1b957ee68",
    url = "https://github.com/bazelbuild/rules_java/releases/download/0.1.1/rules_java-0.1.1.tar.gz",
)

# Merely loading the rule won't transitively execute code inside them to load
# their dependencies. Instead, as the consumer we have to request the rest of the
# setup.

load("@rules_java//java:repositories.bzl", "rules_java_dependencies", "rules_java_toolchains")

rules_java_dependencies()

rules_java_toolchains()

# Download JDKs; as I understand all will be downloaded, then only the one
# suitable for the platform will be used.

http_archive(
    name = "jdk8_linux",
    build_file = "@local_jdk//:BUILD.bazel",
    sha256 = "568e7578f1b20b1e62a8ed2c374bad4eb0e75d221323ccfa6ba8d7bc56cf33cf",
    strip_prefix = "zulu8.38.0.13-ca-jdk8.0.212-linux_x64",
    urls = [
        "https://cdn.azul.com/zulu/bin/zulu8.38.0.13-ca-jdk8.0.212-linux_x64.tar.gz",
    ],
)

http_archive(
    name = "jdk8_macos",
    build_file = "@local_jdk//:BUILD.bazel",
    sha256 = "64538f3eed34a298cc48168e89326fd323a55d801a3e6b2c3cc948effe124250",
    strip_prefix = "zulu8.38.0.13-ca-jdk8.0.212-macosx_x64",
    urls = [
        "https://cdn.azul.com/zulu/bin/zulu8.38.0.13-ca-jdk8.0.212-macosx_x64.tar.gz",
    ],
)

http_archive(
    name = "jdk8_windows",
    build_file = "@local_jdk//:BUILD.bazel",
    sha256 = "f5367fc29485252e91d3d1d28b069277b7133dfa2e104fc181af4373267d3a82",
    strip_prefix = "zulu8.38.0.13-ca-jdk8.0.212-win_x64",
    urls = [
        "https://cdn.azul.com/zulu/bin/zulu8.38.0.13-ca-jdk8.0.212-win_x64.zip",
    ],
)

load("//build_defs:gwt.bzl", "gwt_generate_workspace_rules")

gwt_generate_workspace_rules()
