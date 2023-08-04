#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "wp" "ls -l /var/www/html"

# Report result
reportResults
