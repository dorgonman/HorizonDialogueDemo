#!/bin/sh
set -e

BASE_PATH=$(cd "$(dirname "$0")"; pwd)


TOOL_ROOT=$(cd "${BASE_PATH}/../ue_ci_scripts/function/python/UnrealIntegrationTool/UnrealIntegrationTool/Source/ExcelExporterCSV/"; pwd)
OUTPUT_DIR="${BASE_PATH}/../Content/HorizonDialogueDemo/StringTableFromExcel/"
mkdir -p ${OUTPUT_DIR}
OUTPUT_DIR=$(cd "${OUTPUT_DIR}"; pwd)

#xls to string table csv
python ${TOOL_ROOT}/Main.py --TargetDir=${BASE_PATH}/Excel --OutputDir=${OUTPUT_DIR} --OutputExt=".stcsv"
