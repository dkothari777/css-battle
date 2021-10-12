#!/usr/bin/env bash

set -eu

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
BASE_WORKSPACE_DIRECTORY=$(dirname "${SCRIPT_DIR}")

function usage() {
  echo "$0 [css-battle-name] [number-of-exercises]" >&2
  exit 1
}

if [ "$#" -ne 2 ]; then
  usage
fi

CSS_BATTLE_NAME=$1
NUMBER_OF_EXERCISES=$2
re='^[0-9]+$'
if ! [[ $NUMBER_OF_EXERCISES =~ $re ]]; then
  echo "NUMBER_OF_EXERCISES ${NUMBER_OF_EXERCISES} was not a whole positive number" >&2
  usage
fi

for DIR in $(seq 1 ${NUMBER_OF_EXERCISES}); do 
  mkdir -p "${BASE_WORKSPACE_DIRECTORY}/${CSS_BATTLE_NAME}/${DIR}" 
  touch "${BASE_WORKSPACE_DIRECTORY}/${CSS_BATTLE_NAME}/${DIR}/index.html" 
done
