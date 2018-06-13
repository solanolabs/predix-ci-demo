#!/bin/bash

export HOME=/root

echo "----------------------------"
echo "Running Unit Tests"
echo "----------------------------"

# Install CF CLI
chmod +x ./scripts/install_cf_cli.sh
./scripts/install_cf_cli.sh

# Configure CF ENV
chmod +x ./scripts/configure_cf_cli.rb
./scripts/configure_cf_cli.rb

# Running CF Tests
cf target
cf orgs
cf spaces
cf apps

echo "----------------------------"
echo "Unit Tests Passed"
echo "----------------------------"
