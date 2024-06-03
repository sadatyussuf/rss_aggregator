#!/bin/bash

# Prompt user for package name
read -p "Enter Package Name: " package_name

# Fetch the package
go get "$package_name"

# Ensure dependencies are tidied
echo "Tiding go mod"
go mod tidy

# Vendor the dependencies
echo "Vendoring dependencies"
go mod vendor

# Final message
echo "Finished vendoring $package_name"
