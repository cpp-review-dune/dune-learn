#!/usr/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)
BUILD_DIR="${REPO_ROOT}"/build

[ -d "${BUILD_DIR}" ] && "${BUILD_DIR}"/src/dune-learn >dune-learn-1.txt
