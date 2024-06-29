#! /bin/bash
# **********************************************************
#      2024 : Arthur JEULIN
#      Copyright (c) Arthur JEULIN 
#      Created by Arthur JEULIN on 06/28/2024.
# **********************************************************
#
# Module : Install vcpkg on your machine
#

# to run this script on windows
# open wsl terminal and go to cd /mnt/c/dev/rtmaps/inventory
# ./install_vcpkg.sh


sudo apt update
sudo apt install build-essential git cmake

git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg

# Détecter le système d'exploitation
OS=$(uname -s)

if [ "$OS" = "Linux" ] || [ "$OS" = "Darwin" ]; then
    # Pour Linux et MacOS
    echo "Running installation for Linux/MacOS"
    ./bootstrap-vcpkg.sh
else
    echo "Unsupported OS. Please use Linux or MacOS with this script."
fi