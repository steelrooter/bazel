#!/bin/bash
set -e

# Check if inside a valid git repo
if git rev-parse --git-dir > /dev/null 2>&1; then
	: # Inside a git repo
else
	echo "not a git repo";
	exit 1
fi

# Check if repo is dirty
if [[ -n $(git status --porcelain) ]]; then
	echo "repo is dirty";
	exit 1
fi

git fetch --all --prune

git rebase upstream/master databinding

bazelisk build //src:bazel //tools/android/runtime_deps:android_tools.tar.gz

mv -f bazel-bin/src/bazel ~/bin/bazel-databinding

source ./create_tmp_android_tools.sh
