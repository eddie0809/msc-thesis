#!/bin/bash

BUILD_DIR="build"
PROJECT=$1

function exit_with_error {
  echo "Error: $1"
  exit 1
}

if [ ! -d $BUILD_DIR ]; then
  mkdir $BUILD_DIR || exit_with_error "failed to create build directory."
fi

if [ ! -e .latexmkrc ]; then
  exit_with_error "No latexmkrc file."
fi

exec latexmk -auxdir=$BUILD_DIR -pv -f

#CMD="lualatex -shell-escape -interaction=nonstopmode -halt-on-error -file-line-error $1.tex"
#bibtex $1.aux
