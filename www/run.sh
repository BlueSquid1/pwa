#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
bazel build :generate_html
python3 -m webbrowser "file://${SCRIPT_DIR}/bazel-bin/dist/index.html"