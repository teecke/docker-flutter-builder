#!/bin/bash

# @description Build single docker flutter builde image
#
# @example
#   buildDockerImage 29.0.2
#
# @arg $1 Build tools and final image tag, i.e. "29.0.2"
#
# @exitcode The exit code of the build
#
# @stdout The error message of the build
#
function buildDockerImage() {
    # Init
    local imageTag
    local buildTools
    local platformTools
    platformTools=$(echo "android-$1"|cut -f 1 -d ".")
    buildTools=$1
    imageTag=$buildTools

    echo "# Building 'pedroamador/docker-flutter-builder:${imageTag}' docker image with '${platformTools}' platform tools and '${buildTools}' build tools"
    echo
    docker build --build-arg PLATFORM_TOOLS="${platformTools}" --build-arg BUILD_TOOLS="${buildTools}" -t teecke/docker-flutter-builder:"${imageTag}" .
}

# @description Build all docker images
#
# @example
#   build-all
#
# @arg $1 Task: "brief", "help" or "exec"
#
# @exitcode 0
#
# @stdout "Not implemented" message if the requested task is not implemented
#
function build-all() {

    # Init
    local briefMessage
    local helpMessage
    briefMessage="Build all docker images"
    helpMessage=$(cat <<EOF
Build all docker images of the Docker Flutter Builder.

The build include the following tags of the <teecke/docker-flutter-builder> docker image based on the specified platform tools / build tools:

Build Tools
==========
"${buildToolsList}"
EOF
)

    # Task choosing
    case $1 in
        brief)
            showBriefMessage "${FUNCNAME[0]}" "$briefMessage"
            ;;
        help)
            showHelpMessage "${FUNCNAME[0]}" "$helpMessage"
            ;;
        exec)
        
            for buildToolsVersion in $(echo "${buildToolsList}"|tr ' ' '\n'); do
                buildDockerImage "${buildToolsVersion}"
            done
            ;;
        *)
            showNotImplemtedMessage "$1" "${FUNCNAME[0]}"
            return 1
    esac
}

# Main
cd "$(dirname "$0")/../.." || exit
buildToolsList=$(cat build-tools.list)
build-all "$@"
