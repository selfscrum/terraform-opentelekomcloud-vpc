#!/bin/bash
# test the vpc module
#

cd ..

# 1. static unit test
#
if [[ $(terraform init -no-color) -ne 0  ]]; then
    echo "FAIL for terraform init in $PWD"
    exit 1
fi
echo "SUCCESS for terraform init in $PWD"

if [[ $(terraform fmt -check -no-color -list=true) -ne 0 ]]; then
    echo "FAIL for terraform fmt -check in $PWD"
    exit 1
fi
echo "SUCCESS for terraform fmt check in $PWD"

if [[ $(terraform validate -no-color > /dev/null) -ne 0 ]]; then
    echo "FAIL for terraform validate in $PWD"
    exit 1
fi
echo "SUCCESS for terraform validate in $PWD"

# 2. terratest with real deployment. Make sure this goes to the test environment
#
cd test
GO=/usr/local/go/bin/go
export GOMOD=$PWD/go.mod
$GO mod init
$GO mod tidy
$GO test -run TestTerraformVpc
export RET=$?
echo "go test returns $RET"
exit $RET