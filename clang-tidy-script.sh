#!/bin/bash

CLANG_TIDY_DIFF="./clang-tidy-diff.py"
CLANG_TIDY_BIN="/ptmp/jay/new/llvm-project-checks/build/bin/clang-tidy"
BUILD_PATH="/ptmp/jay/new/llvm-project-checks/build"

if [ $# -lt 1 ]; then
  echo "Usage: $0 <PR1> <PR2> ... <PRn>"
  exit 1
fi

for pr in "$@"; do
  echo "Processing PR #$pr..."
  git fetch origin pull/$pr/head:pr-$pr
  git diff origin/main...pr-$pr -U0 > pr-$pr.diff

  cat pr-$pr.diff | python3 "$CLANG_TIDY_DIFF" \
    -p1 -j4 \
    -path "$BUILD_PATH" \
    -clang-tidy-binary "$CLANG_TIDY_BIN"

  rm pr-$pr.diff
done

echo "Finished processing all PRs."
