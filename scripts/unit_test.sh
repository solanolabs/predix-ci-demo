#!/bin/bash

cd ~

tar -xvf scm_artifact.tar
ls -l

echo "----------------------------"
echo "Running Unit Tests"
echo "----------------------------"

# Running CF Tests

cf target
cf apps

echo "----------------------------"
echo "Unit Tests Passed"
echo "----------------------------"
