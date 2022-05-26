#!/bin/bash

set -e
source config.env # Carga la configuración

gh repo list $GITHUB_OWNER --visibility $GITHUB_GET_REPOS_WITH_VISIBILITY --limit 99999 --json nameWithOwner,isPrivate,url | jq | tee $OUTPUT_FILE
