#!/bin/bash

while getopts ':-:' OPTION; do
  case "$OPTION" in
    -)
        case "${OPTARG}" in
            flask=*)
                val=${OPTARG#*=}
                opt=${OPTARG%=$val}
                echo "Setting up Flask App" >&2
                python3 -m venv  ${val}
                ;;
            *)
                if [ "$OPTERR" = 1 ] && [ "${optspec:0:1}" != ":" ]; then
                    echo "Unknown option --${OPTARG}" >&2
                    fi
                ;;
        esac;;
    ?)
      echo "Usage: setup-project [option] [path/to/project]" >&2
      echo "       --flask=path/to/ptoject"
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"
