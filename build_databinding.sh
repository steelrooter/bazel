#!/bin/bash
set -e

bazelisk build //src:bazel //tools/android/runtime_deps:android_tools.tar.gz

mv -f bazel-bin/src/bazel ~/bin/bazel-databinding

source ./create_tmp_android_tools.sh
