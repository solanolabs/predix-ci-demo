#!/bin/bash

cd ~

tar -xvf scm_artifact.tar
ls -l

echo "----------------------------"
echo "Running Unit Tests"
echo "----------------------------"

# Install CF CLI
./install_cf_cli.sh

# Running CF Tests
cf target
cf apps

echo "----------------------------"
echo "Unit Tests Passed"
echo "----------------------------"
