#!/bin/bash

source config.env # Carga la configuración
# set -e # Comentado ya que creo que es mejor idea que continúe hacia los siguienes si la visibilidad ya es la correcta

while read REPO_FULLNAME; do
  echo "   Setting visibility for repo \"$REPO_FULLNAME\" to \"$GITHUB_SET_REPOS_WITH_VISIBILITY\"..."
  gh repo edit $REPO_FULLNAME --visibility $GITHUB_SET_REPOS_WITH_VISIBILITY
done < <(jq .[].nameWithOwner --raw-output repos_to_change.json)
