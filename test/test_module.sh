#!/bin/bash

set -o errexit

cd ..

# basic unit test
#
terraform init -no-color
echo "SUCCESS for terraform init in $PWD"
terraform fmt -check -no-color -list=true
echo "SUCCESS for terraform fmt check in $PWD"
terraform validate -no-color 
echo "SUCCESS for terraform validate in $PWD"
echo "SUCCESS => for module test in $PWD"

