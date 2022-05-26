# gh-repo-change-visibility

## Prerrequisitos:
- Usar bash
- Instalar [gh-cli](https://cli.github.com/)
- Configurar credenciales en gh
  - Lanzar el comando `gh auth login`
- Instalar [jq](https://stedolan.github.io/jq/)

## Instrucciones:
1. Configura el fichero config.env.
2. Lanza el script [get-repos.sh](get-repos.sh)
3. Esta ejecución habrá generado una lista de repositorios en el fichero `repos_to_change.json`, hay que editar este fichero eliminando todos los repositorios que no se quieran modificar. Cada entrada tendrá el nombre, si la visibilidad es privada y la URL del repo para que sea más fácil de revisar.
4. **OJO QUE ESTE PASO ES EL QUE HACE MODIFICACIONES**. Una vez se haya adaptado el fichero JSON, lanzar el script [set-repos-visibility.sh](set-repos-visibility.sh).
