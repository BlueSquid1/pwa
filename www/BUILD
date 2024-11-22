load("@npm//:defs.bzl", "npm_link_all_packages")
load("@npm//:webpack-cli/package_json.bzl", "bin")

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
    out_dirs=[
        "dist"
    ],
    args = [
        "--config webpack.config.js",
        "--mode production",
    ],
    chdir = package_name(),
    log_level = "debug"
)

sh_binary(
    name = "launch_browser",
    srcs = ["open_web_browser.sh"],
    deps = [":launch_server"],
)