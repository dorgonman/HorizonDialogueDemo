#!/bin/sh
set -e

<<LICENSE

LICENSE

./export_excel.sh


BASE_PATH=$(pwd)
SCRIPT_JOB_ROOT=$(cd "${BASE_PATH}/../horizon_ci_scripts/ci_scripts/sh/common/"; pwd)
pushd "${SCRIPT_JOB_ROOT}"

./gather_localization.sh

popd #pushd ${SCRIPT_JOB_ROOT}
