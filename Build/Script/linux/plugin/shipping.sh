#!/usr/bin/env bash
# HorizonDialogueDemo - Build ONLY HorizonDialoguePlugin for Linux
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "${SCRIPT_DIR}/../../../../Build/Base/Script/common.sh"

HOST_PLATFORM="${HOST_PLATFORM:-Linux}"
TARGET_PLATFORM="${TARGET_PLATFORM:-Linux}"
TARGET_CONFIGURATION="${TARGET_CONFIGURATION:-Shipping}"

build_find_plugins() {
    local project_root="${1:-$(build_project_root)}"
    if [[ -f "${project_root}/Plugins/HorizonDialoguePlugin/HorizonDialoguePlugin.uplugin" ]]; then
        printf '%s\n' "${project_root}/Plugins/HorizonDialoguePlugin/HorizonDialoguePlugin.uplugin"
    else
        echo "ERROR: HorizonDialoguePlugin not found at ${project_root}/Plugins/HorizonDialoguePlugin/HorizonDialoguePlugin.uplugin" >&2
        return 1
    fi
}

build_run_plugin "$@"
