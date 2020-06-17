#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "usage: $0 <filename>"
  echo "  e.g. $0 chrome_google_meet-1_0_0.alfredworkflow"
  exit 1
fi

dest_filename="$1"

set -eu

cd src
zip -j9 "../$dest_filename" ./* >&2

echo "$dest_filename"
