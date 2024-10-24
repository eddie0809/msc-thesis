#!/bin/bash

BUILD_DIR="build"

function exit_with_error {
  echo "Error: $1"
  exit 1
}

if [ "$1" = "new" ]; then
  rm -rf $BUILD_DIR
fi

if [ ! -d $BUILD_DIR ]; then
  mkdir $BUILD_DIR || exit_with_error "failed to create build directory."
fi

if [ ! -e .latexmkrc ]; then
  exit_with_error "No latexmkrc file found"
fi

# -f enables what i call the "overleaf mode"
exec latexmk -auxdir=$BUILD_DIR -pvc -f

