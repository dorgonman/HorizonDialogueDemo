#!/bin/sh
set -e
<<LICENSE

LICENSE
source ~/.bash_profile

export UE4_ENGINE_ROOT=${UE4_ENGINE_ROOT}
export NAME="UE4Editor-HorizonPlugin"
export FEED_NAME="hsgame-local"
export PACKAGE_NAME="UE4Editor-HorizonDialogueDemo"


echo *************FEED_NAME: ${FEED_NAME}
echo ************PACKAGE_NAME: ${PACKAGE_NAME}

BASE_PATH=$(cd "$(dirname "$0")"; pwd)
PROJECT_ROOT=$(cd "${BASE_PATH}/../"; pwd)
pushd "${PROJECT_ROOT}"

	source ue_ci_scripts/function/sh/ue_deploy_function.sh
	InstallNugetPackage

popd #pushd ${PROJECT_ROOT}
