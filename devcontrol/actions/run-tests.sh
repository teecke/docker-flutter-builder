#!/bin/bash

# @description Execute tests
#
# @example
#   execute-tests
#
# @arg $1 Task: "brief", "help" or "exec"
#
# @exitcode The result of the shellckeck
#
# @stdout "Not implemented" message if the requested task is not implemented
#
function run-tests() {

    # Init
    local briefMessage
    local helpMessage

    briefMessage="Execute tests"
    helpMessage=$(cat <<EOF
Execute shellckheck test over the following scripts:

* devcontrol/actions/build-all.sh
* devcontrol/actions/run-tests.sh
* devcontrol/global/startup.sh
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
            exitCode=0
            for file in devcontrol/actions/build-all.sh devcontrol/actions/run-tests.sh devcontrol/global/startup.sh; do
                echo -n "Executing shellcheck over ${file}..."
                failed=0
                docker run -i --workdir /workspace -v "$(pwd)":/workspace koalaman/shellcheck-alpine shellcheck -x "${file}" || failed=1
                if [ ${failed} -eq 0 ]; then
                    echo "[OK]"
                else
                    echo "-----> Test failed"
                    exitCode=$((exitCode + 1))
                fi
            done
            exit ${exitCode}
            ;;
        *)
            showNotImplemtedMessage "$1" "${FUNCNAME[0]}"
            return 1
    esac
}

# Main
run-tests "$@"
