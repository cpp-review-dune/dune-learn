#!/usr/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)
BUILD_DIR="${REPO_ROOT}"/build
LOG_FILE=dune-learn-1.txt

[ -d "${BUILD_DIR}" ] && "${BUILD_DIR}"/src/dune-learn >${LOG_FILE}

jupyter nbconvert --to markdown ${REPO_ROOT}/src/hello.ipynb --stdout >${REPO_ROOT}/doc/cheat-sheet/hello.md
pandoc -F ${REPO_ROOT}/doc/cheat-sheet/pandoc-minted.py -f markdown -t latex ${REPO_ROOT}/doc/cheat-sheet/hello.md -o ${REPO_ROOT}/doc/cheat-sheet/hello.tex
# --listings
# -H "${REPO_ROOT}"/doc/cheat-sheet/header.md \
