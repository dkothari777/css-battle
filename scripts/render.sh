#!/usr/bin/env bash

set -eu

HTML_TYPE="HTML document text, ASCII text"

function usage() {
  echo "$0 [html-file-to-render]"
  exit 1
}

if [ "$#" -ne 1 ]; then
  usage
fi

FILE_TO_RENDER=$1

if [[ ! -f "${FILE_TO_RENDER}" ]]; then
  echo "${FILE_TO_RENDER} does not exist."
  usage
fi

FILE_TYPE=$(file "${FILE_TO_RENDER}")
FILE_TYPE=${FILE_TYPE#"${FILE_TO_RENDER}: "}

if [ "${FILE_TYPE}" != "${HTML_TYPE}" ]; then
  echo "${FILE_TO_RENDER} is not html file"
  usage
fi

open "${FILE_TO_RENDER}" -a Safari
