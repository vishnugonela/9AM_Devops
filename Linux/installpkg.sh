#!/bin/bash

# Check if tomcat is installed
if yum list installed "tomcat" >/dev/null 2>&1; then
	    echo "Tomcat is already installed."
    else
	        echo "Tomcat is not installed. Installing now..."
		    sudo yum install tomcat
	    fi
