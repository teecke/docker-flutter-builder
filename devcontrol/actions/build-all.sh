#!/bin/bash

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
function hello-world() {

    # Init
    local briefMessage="Build all docker images"
    local helpMessage="""Build all docker images of the Docker Flutter Builder.

The build include the following tags of the <teecke/docker-flutter-builder> docker image based on the specified platform tools / build tools:

Docker Image Tag   Platform Tools   Build Tools
================   ==============   ==========
29.0.2             android-29       29.0.2    
29.0.0             android-29       29.0.0    
28.0.3             android-28       28.0.3    
28.0.2             android-28       28.0.2    
27.0.3             android-27       27.0.3    
27.0.2             android-27       27.0.2    
27.0.1             android-27       27.0.1    
26.0.2             android-26       26.0.2    
26.0.1             android-26       26.0.1    
26.0.0             android-26       26.0.0    
25.0.3             android-25       25.0.3    
25.0.2             android-25       25.0.2    
25.0.1             android-25       25.0.1    
25.0.0             android-25       25.0.0    
24.0.3             android-24       24.0.3    
23.0.3             android-23       23.0.3    
23.0.2             android-23       23.0.2    
23.0.1             android-23       23.0.1    
23.0.0             android-23       23.0.0    
22.0.1             android-22       22.0.1    
22.0.0             android-22       22.0.0    
21.1.2             android-21       21.1.2    
21.1.1             android-21       21.1.1    
21.1               android-21       21.1      
21.0.2             android-21       21.0.2    
21.0.1             android-21       21.0.1    
21.0.0             android-21       21.0.0    
20.0.0             android-20       20.0.0    
19.1.0             android-19       19.1.0    
19.0.3             android-19       19.0.3    
19.0.2             android-19       19.0.2    
19.0.1             android-19       19.0.1    
19                 android-19       19        
18.1.1             android-18       18.1.1    
18.1.0             android-18       18.1.0    
18.0.1             android-18       18.0.1    
17                 android-17       17        

"""

    # Task choosing
    case $1 in
        brief)
            showBriefMessage ${FUNCNAME[0]} "$briefMessage"
            ;;
        help)
            showHelpMessage ${FUNCNAME[0]} "$helpMessage"
            ;;
        exec)
            docker build --build-arg PLATFORM_TOOLS=android-29 --build-arg BUILD_TOOLS=29.0.2    -t pedroamador/docker-flutter-builder:29.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-29 --build-arg BUILD_TOOLS=29.0.0    -t pedroamador/docker-flutter-builder:29.0.0 .
            docker build --build-arg PLATFORM_TOOLS=android-28 --build-arg BUILD_TOOLS=28.0.3    -t pedroamador/docker-flutter-builder:28.0.3 .
            docker build --build-arg PLATFORM_TOOLS=android-28 --build-arg BUILD_TOOLS=28.0.2    -t pedroamador/docker-flutter-builder:28.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-27 --build-arg BUILD_TOOLS=27.0.3    -t pedroamador/docker-flutter-builder:27.0.3 .
            docker build --build-arg PLATFORM_TOOLS=android-27 --build-arg BUILD_TOOLS=27.0.2    -t pedroamador/docker-flutter-builder:27.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-27 --build-arg BUILD_TOOLS=27.0.1    -t pedroamador/docker-flutter-builder:27.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-26 --build-arg BUILD_TOOLS=26.0.2    -t pedroamador/docker-flutter-builder:26.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-26 --build-arg BUILD_TOOLS=26.0.1    -t pedroamador/docker-flutter-builder:26.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-26 --build-arg BUILD_TOOLS=26.0.0    -t pedroamador/docker-flutter-builder:26.0.0 .
            docker build --build-arg PLATFORM_TOOLS=android-25 --build-arg BUILD_TOOLS=25.0.3    -t pedroamador/docker-flutter-builder:25.0.3 .
            docker build --build-arg PLATFORM_TOOLS=android-25 --build-arg BUILD_TOOLS=25.0.2    -t pedroamador/docker-flutter-builder:25.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-25 --build-arg BUILD_TOOLS=25.0.1    -t pedroamador/docker-flutter-builder:25.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-25 --build-arg BUILD_TOOLS=25.0.0    -t pedroamador/docker-flutter-builder:25.0.0 .
            docker build --build-arg PLATFORM_TOOLS=android-24 --build-arg BUILD_TOOLS=24.0.3    -t pedroamador/docker-flutter-builder:24.0.3 .
            docker build --build-arg PLATFORM_TOOLS=android-23 --build-arg BUILD_TOOLS=23.0.3    -t pedroamador/docker-flutter-builder:23.0.3 .
            docker build --build-arg PLATFORM_TOOLS=android-23 --build-arg BUILD_TOOLS=23.0.2    -t pedroamador/docker-flutter-builder:23.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-23 --build-arg BUILD_TOOLS=23.0.1    -t pedroamador/docker-flutter-builder:23.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-23 --build-arg BUILD_TOOLS=23.0.0    -t pedroamador/docker-flutter-builder:23.0.0 .
            docker build --build-arg PLATFORM_TOOLS=android-22 --build-arg BUILD_TOOLS=22.0.1    -t pedroamador/docker-flutter-builder:22.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-22 --build-arg BUILD_TOOLS=22.0.0    -t pedroamador/docker-flutter-builder:22.0.0 .
            docker build --build-arg PLATFORM_TOOLS=android-21 --build-arg BUILD_TOOLS=21.1.2    -t pedroamador/docker-flutter-builder:21.1.2 .
            docker build --build-arg PLATFORM_TOOLS=android-21 --build-arg BUILD_TOOLS=21.1.1    -t pedroamador/docker-flutter-builder:21.1.1 .
            docker build --build-arg PLATFORM_TOOLS=android-21 --build-arg BUILD_TOOLS=21.1      -t pedroamador/docker-flutter-builder:21.1   .
            docker build --build-arg PLATFORM_TOOLS=android-21 --build-arg BUILD_TOOLS=21.0.2    -t pedroamador/docker-flutter-builder:21.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-21 --build-arg BUILD_TOOLS=21.0.1    -t pedroamador/docker-flutter-builder:21.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-21 --build-arg BUILD_TOOLS=21.0.0    -t pedroamador/docker-flutter-builder:21.0.0 .
            docker build --build-arg PLATFORM_TOOLS=android-20 --build-arg BUILD_TOOLS=20.0.0    -t pedroamador/docker-flutter-builder:20.0.0 .
            docker build --build-arg PLATFORM_TOOLS=android-19 --build-arg BUILD_TOOLS=19.1.0    -t pedroamador/docker-flutter-builder:19.1.0 .
            docker build --build-arg PLATFORM_TOOLS=android-19 --build-arg BUILD_TOOLS=19.0.3    -t pedroamador/docker-flutter-builder:19.0.3 .
            docker build --build-arg PLATFORM_TOOLS=android-19 --build-arg BUILD_TOOLS=19.0.2    -t pedroamador/docker-flutter-builder:19.0.2 .
            docker build --build-arg PLATFORM_TOOLS=android-19 --build-arg BUILD_TOOLS=19.0.1    -t pedroamador/docker-flutter-builder:19.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-19 --build-arg BUILD_TOOLS=19        -t pedroamador/docker-flutter-builder:19     .
            docker build --build-arg PLATFORM_TOOLS=android-18 --build-arg BUILD_TOOLS=18.1.1    -t pedroamador/docker-flutter-builder:18.1.1 .
            docker build --build-arg PLATFORM_TOOLS=android-18 --build-arg BUILD_TOOLS=18.1.0    -t pedroamador/docker-flutter-builder:18.1.0 .
            docker build --build-arg PLATFORM_TOOLS=android-18 --build-arg BUILD_TOOLS=18.0.1    -t pedroamador/docker-flutter-builder:18.0.1 .
            docker build --build-arg PLATFORM_TOOLS=android-17 --build-arg BUILD_TOOLS=17        -t pedroamador/docker-flutter-builder:17     .
            ;;
        *)
            showNotImplemtedMessage $1 ${FUNCNAME[0]}
            return 1
    esac
}

# Main
hello-world "$@"