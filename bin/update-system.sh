#!/usr/bin/env bash

# Bash strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -o nounset   # Using an undefined variable is fatal
# set -o errexit   # A sub-process/shell returning non-zero is fatal
set -o pipefail  # If a pipeline step fails, the pipelines RC is the RC of the failed step
#set -o xtrace    # Output a complete trace of all bash actions; uncomment for debugging

#IFS=$'\n\t'  # Only split strings on newlines & tabs, not spaces.

#
# Update the system
#

# dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

echo "Updating apt database..."
sudo apt update -qq

apt list --upgradable

echo "Installing apt updates..."
sudo aptitude -q safe-upgrade

echo "Updating flatpak apps..."
sudo flatpak update -y

echo "Updating apps using eget..."
~/bin/update-eget.sh

echo "Updating man/tldr pages..."
tldr --update
