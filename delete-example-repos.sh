#!/bin/bash

set -e
source config.env # Carga la configuración
NAMES_LIST_FILE=./example-creation-list.txt

# -> Do things

while read REPO_NAME; do
  REPO_FULLNAME="$GITHUB_OWNER/$REPO_NAME"
  echo "   Eliminando repo $REPO_FULLNAME..."
  
  gh repo delete $REPO_FULLNAME --confirm
done <$NAMES_LIST_FILE
