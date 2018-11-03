#!/bin/sh
set -e
BASE_PATH=$(pwd)
OUTPUT_DIR="${BASE_PATH}/../Content/HorizonDialogueDemo/DataTable/"
mkdir -p ${OUTPUT_DIR}
OUTPUT_DIR=$(cd "${OUTPUT_DIR}"; pwd)
#rm -rf ${OUTPUT_DIR}/*

./export_excel_step_0.sh

./export_excel_step_1.sh