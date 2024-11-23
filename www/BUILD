package(default_visibility = ["//visibility:public"])

load("@npm//:defs.bzl", "npm_link_all_packages")
load("@npm//:webpack-cli/package_json.bzl", "bin")
load("@rules_pkg//pkg:mappings.bzl", "pkg_files")
load("@rules_pkg//pkg:tar.bzl", "pkg_tar")

npm_link_all_packages()

filegroup(
    name = "client_src",
    srcs = glob(["src/**"]),
)

bin.webpack_cli(
    name="generate_html",
    srcs=[
        ":node_modules",
        "tsconfig.json",
        "webpack.config.js",
        ":client_src",
    ],
    outs=[
        "dist/bundle.js",
        "dist/index.html",
    ],
    args = [
        "--config webpack.config.js",
        "--mode production",
    ],
    chdir = package_name(),
    log_level = "debug",
)

pkg_files(
    name = "package_html",
    srcs = [
        ":generate_html",
    ],
)

pkg_tar(
    name = "tar_html",
    srcs = [
        ":package_html",
    ],
)