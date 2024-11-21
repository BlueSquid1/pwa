load("@aspect_rules_js//js:defs.bzl", "js_test")
load("@npm//:defs.bzl", "npm_link_all_packages")
load("@aspect_rules_webpack//webpack:defs.bzl", "webpack_bundle", "webpack_devserver")

npm_link_all_packages()

webpack_bundle(
    name = "bundle",
    srcs = [
        "src/index.css",
        "src/App.css",
        "src/App.tsx",
        "src/index.tsx",
        "src/index.html",
        "tsconfig.json",
    ],
    node_modules = "//:node_modules",
    output_dir = True,
    webpack_config = ":webpack.config.js",
    deps = [
        ":node_modules/html-webpack-plugin",
        ":node_modules/react",
        ":node_modules/react-dom",
        ":node_modules/ts-loader",
        ":node_modules/style-loader",
        ":node_modules/css-loader",
        ":node_modules/@types/react",
        ":node_modules/@types/react-dom",
        ":node_modules/@emotion/react",
        ":node_modules/@emotion/styled",
        ":node_modules/@mui/material",
    ],
)