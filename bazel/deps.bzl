load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cpp_redis_deps():
    http_archive(
        name = "tacopie",
        sha256 = "bbdebecdb68d5f9eb64170217000daf844e0aee18b8c4d3dd373d07efd9f7316",
        strip_prefix = "tacopie-master",
        url = "https://github.com/cylix/tacopie/archive/master.zip",
    )

def cpp_redis_test_deps():
    http_archive(
        name = "gtest",
        build_file = "BUILD.gtest",
        sha256 = "f3ed3b58511efd272eb074a3a6d6fb79d7c2e6a0e374323d1e6bcbcc1ef141bf",
        strip_prefix = "googletest-release-1.8.0",
        url = "https://github.com/google/googletest/archive/release-1.8.0.zip",
    )
