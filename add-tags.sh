#!/bin/bash

echo $1

exit 0

find ./* -type f -name "*.json" -print0 | xargs -0 -I {} sh -c 'jq ". += $1" "{}" > tmp && mv tmp "{}"'