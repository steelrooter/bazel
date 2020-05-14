ROOT_DIR="${HOME}/bin"
TMP_ADR_DIR="/tmp/android_tools"
FULL_ADR_DIR="${ROOT_DIR}${TMP_ADR_DIR}"

rm -rf "${FULL_ADR_DIR}"
mkdir -p "${FULL_ADR_DIR}"
tar -xf bazel-bin/tools/android/runtime_deps/android_tools.tar.gz -C "${FULL_ADR_DIR}"
