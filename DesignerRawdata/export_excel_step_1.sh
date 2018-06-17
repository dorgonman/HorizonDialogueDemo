#!/bin/sh
set -e

BASE_PATH=$(cd "$(dirname "$0")"; pwd)

IMPORT_SETTING_LIST=$(find ${BASE_PATH}/ImportSettings -iregex ".*\.\(json\)")

i=0
for path in ${IMPORT_SETTING_LIST}; do
IMPORT_SETTING_LIST_ARRAY[i]=${path}
i=$((i+1))
done


nArray=${#IMPORT_SETTING_LIST_ARRAY[@]}
echo "Num of importing settings:" ${nArray}

# echo all path list
pushd "../horizon_ci_scripts/ci_scripts/sh/common/"
	for (( i=0; i<${nArray}; i++ ));
	do
		export EXCEL_IMPORT_SETTINGS_PATH=${IMPORT_SETTING_LIST_ARRAY[$i]}
		echo "EXCEL_IMPORT_SETTINGS_PATH": ${IMPORT_SETTING_LIST_ARRAY[$i]}
	done
popd

#csv to uasset
pushd "../horizon_ci_scripts/ci_scripts/sh/common/"
	for (( i=0; i<${nArray}; i++ ));
	do
		export EXCEL_IMPORT_SETTINGS_PATH=${IMPORT_SETTING_LIST_ARRAY[$i]}
		echo "EXCEL_IMPORT_SETTINGS_PATH": ${EXCEL_IMPORT_SETTINGS_PATH}
		./import_csv.sh
	done
popd


