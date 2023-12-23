#!/bin/bash

#########################
# Install Typora Script #
#########################

# Copy Typora folder to AppData

cp -r .\Typora ~\AppData\Roaming

# If the installer doesn't exist download it

if (!(Test-Path .\typora-setup-x64.exe -PathType Leaf)) {

	# Download a copy of the winows installer
	Invoke-WebRequest https://download.typora.io/windows/typora-setup-x64.exe -OutFile .\typora-setup-x64.exe

}

# Optionally, Check if it's installed already with: get-package Typora*

# Run copy on USB 
ii .\typora-setup-x64.exe


# Then set up unison for directory sync