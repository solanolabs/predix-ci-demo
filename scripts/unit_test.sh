#!/bin/bash

export HOME=/root

set –xv

echo "----------------------------"
echo "Install CF CLI"
echo "----------------------------"

chmod +x ./scripts/install_cf_cli.sh
./scripts/install_cf_cli.sh

echo "----------------------------"
echo "Configure CF ENV"
echo "----------------------------"

chmod +x ./scripts/configure_cf_cli.rb
./scripts/configure_cf_cli.rb

echo "----------------------------"
echo "Running CF Tests"
echo "----------------------------"

cf target
cf orgs
cf spaces
cf apps
