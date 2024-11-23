load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")


ios_application(
    name = "iOSApp",
    bundle_id = "build.bazel.rules-apple-example",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Resources/Info.plist"],
    minimum_os_version = "18.1",
    visibility = ["//visibility:public"],
    resources = ["@www//:web_files"],
    deps = [":swiftLibrary"],
)

swift_library(
    name = "swiftLibrary",
    srcs = glob(["Sources/*.swift"]),
)