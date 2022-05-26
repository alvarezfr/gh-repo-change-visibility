#!/bin/bash

set -e
source config.env # Carga la configuración
NAMES_LIST_FILE=./example-creation-list.txt

# -> Do things

while read REPO_NAME; do
  REPO_FULLNAME="$GITHUB_OWNER/$REPO_NAME"
  echo "   Creando repo $REPO_FULLNAME..."
  
  gh repo create $REPO_FULLNAME --public
done <$NAMES_LIST_FILE
