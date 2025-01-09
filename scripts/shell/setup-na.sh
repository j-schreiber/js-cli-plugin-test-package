#! /bin/bash
# shellcheck disable=SC1091
set -e

alias='Scratch_Alias_NA'
duration=7
configFile='config/na-scratch-def.json'

while getopts a:d: option; do
    case "${option}" in
    a) alias=${OPTARG} ;;
    d) duration=${OPTARG} ;;
    *) ;;
    esac
done

./scripts/shell/setup.sh -a "$alias" -d "$duration" -f "$configFile"
