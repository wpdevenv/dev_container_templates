#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "wp" "cat /var/www/html/wp-config.php | grep SCRIPT_DEBUG"

# Report result
reportResults
