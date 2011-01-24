#!/bin/bash

if [[ $# -ne 2 ]] ; then
    echo "Usage: $0 <input-all-prefs-file> <output-colors-file>"
    exit 1
fi

ALL=$1
OUT=$2

echo "file_export_version=3.0" > $OUT

cat $ALL | grep -E "([0-9]+,[0-9]+,[0-9]+)|semanticHighlight|Editor.Color|#[0-9a-f]{6}" | sort >> $OUT

