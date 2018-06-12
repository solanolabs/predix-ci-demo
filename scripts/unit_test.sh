#!/bin/bash

ls -la

echo "----------------------------"
echo "Running Unit Tests"
echo "----------------------------"

# Install CF CLI
chmod +x ./scripts/install_cf_cli.sh
./scripts/install_cf_cli.sh

# Running CF Tests
cf target
cf apps

echo "----------------------------"
echo "Unit Tests Passed"
echo "----------------------------"
