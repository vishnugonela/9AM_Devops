#!/bin/bash

# Check if script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "❌ This script must be run as root. Try using sudo." 
   exit 1
fi

PACKAGE="tomcat"

# Check if tomcat is already installed
if rpm -q $PACKAGE &> /dev/null; then
    echo "✅ Package '$PACKAGE' is already installed."
else
    echo "📦 Package '$PACKAGE' is not installed. Installing..."

    # Install EPEL repo if needed (optional, depending on CentOS version)
    if ! yum repolist | grep -q epel; then
        echo "🔧 Installing EPEL repository..."
        yum install -y epel-release
    fi

    # Install tomcat
    yum install -y "$PACKAGE"

    # Check if installation succeeded
    if rpm -q "$PACKAGE" &> /dev/null; then
        echo "✅ '$PACKAGE' has been successfully installed."
    else
        echo "❌ Failed to install '$PACKAGE'."
        exit 1
    fi
fi

echo "=============================================================="
