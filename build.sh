#! /usr/bin/env bash
set -e
# set -x

BASH_DIR=$(dirname $(realpath "${BASH_SOURCE}"))
OUTPUT_DIR="${BASH_DIR}/output"

# Clean up
rm -rf "${OUTPUT_DIR}"
mkdir -p "${OUTPUT_DIR}"

asciidoctor -t --failure-level WARN --trace -v -D "${OUTPUT_DIR}" toc-in-sidebar.adoc
asciidoctor -t --failure-level WARN --trace -v -D "${OUTPUT_DIR}" toc-with-tocbot.adoc
asciidoctor -t --failure-level WARN --trace -v -D "${OUTPUT_DIR}" toc-without-tocbot.adoc
