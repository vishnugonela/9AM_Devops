#!/bin/bash

# Check if the 'tomcat' package is already installed
if yum -l | grep -q "tomcat"; then
    echo "Tomcat is already installed."
else
    # Install the 'tomcat' package
    sudo yum update
    sudo yum install tomcat -y
fi
