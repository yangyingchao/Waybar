#!/usr/bin/env bash

set -eo pipefail # Exit immediately if a command exits with a non-zero status.
set -u			 # Treat unset variables as an error when substituting.
# set -x		 # Print commands and their arguments as they are executed.

LATEST_TAG=$(git describe  --tags   | awk -F "-" '{print $1}')

git diff "${LATEST_TAG}" HEAD > yc-hacking-"${LATEST_TAG}".patch
