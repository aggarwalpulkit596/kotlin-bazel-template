"""
This file lists and imports all external dependencies needed to build your Android app.
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")


# Android SDK configuration. For more details, see:
# https://docs.bazel.build/versions/master/be/android.html#android_sdk_repository
android_sdk_repository(
    name = "androidsdk",
    api_level = 28,
    build_tools_version = "28.0.3",
    path = "/Users/pulkit-mac/Library/Android/sdk/"
)

# Add support for JVM rules: https://github.com/bazelbuild/rules_jvm_external
RULES_JVM_EXTERNAL_TAG = "2.9"

RULES_JVM_EXTERNAL_SHA = "e5b97a31a3e8feed91636f42e19b11c49487b85e5de2f387c999ea14d77c7f45"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

# Add support for Kotlin: https://github.com/bazelbuild/rules_kotlin.
RULES_KOTLIN_VERSION = "v1.5.0-alpha-2"

RULES_KOTLIN_SHA = "6194a864280e1989b6d8118a4aee03bb50edeeae4076e5bc30eef8a98dcd4f07"

http_archive(
    name = "io_bazel_rules_kotlin",
    sha256 = RULES_KOTLIN_SHA,
    urls = ["https://github.com/bazelbuild/rules_kotlin/releases/download/%s/rules_kotlin_release.tgz" % RULES_KOTLIN_VERSION],
)

load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kotlin_repositories", "kt_register_toolchains")

kotlin_repositories()

kt_register_toolchains()


load("@rules_jvm_external//:defs.bzl", "maven_install")

maven_install(
    artifacts = [
        "androidx.appcompat:appcompat:1.0.2",
        "androidx.core:core-ktx:1.0.1",
        "com.google.android.material:material:1.2.1"
    ],
    repositories = [
        "https://maven.google.com",
        "https://repo1.maven.org/maven2",
    ],
)