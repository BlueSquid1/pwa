load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:resources.bzl", "apple_resource_group")

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
    deps = [":swiftLibrary", ":wwwLibrary"],
)

swift_library(
    name = "swiftLibrary",
    srcs = glob(["Sources/*.swift"]),
)

objc_library(
    name = "wwwLibrary",
    data = [":wwwResource"],
)
apple_resource_group(
    name = "wwwResource",
    structured_resources = [
      "www/index.html",
      "www/bundle.js",
    ],
)