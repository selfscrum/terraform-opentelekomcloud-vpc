#!/bin/bash
# test the vpc module
#

set -o errexit

cd ..

# static unit test
#
terraform init -no-color
echo "SUCCESS for terraform init in $PWD"
terraform fmt -check -no-color -list=true
echo "SUCCESS for terraform fmt check in $PWD"
terraform validate -no-color 
echo "SUCCESS for terraform validate in $PWD"
echo "SUCCESS => for module test in $PWD"

# terratest 
#
go mod init
go mod tidy

go test -v -run TestTerraformVpc
