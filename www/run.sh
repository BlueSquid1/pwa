#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

bazel build :generate_html
output_files=(`bazel cquery :generate_html --output files 2>/dev/null`)
index_html=""
for file in "${output_files[@]}"; do
  if [[ $file == *"index.html"* ]]; then
    index_html=$file
    break
  fi
done
python3 -m webbrowser "file://${SCRIPT_DIR}/${index_html}"