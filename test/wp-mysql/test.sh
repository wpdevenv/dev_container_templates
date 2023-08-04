#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "wp" grep -wq "SCRIPT_DEBUG" /var/www/html/wp-config.php

# Report result
reportResults
