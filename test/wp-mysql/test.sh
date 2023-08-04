#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "wp" "$(ls -l /var/www/html/wp-config.php | grep SCRIPT_DEBUG)"

# Report result
reportResults
