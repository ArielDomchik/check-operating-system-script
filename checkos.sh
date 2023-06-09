#!/bin/sh

# Check if the script is run by the root user
if [ "$(id -u)" -ne 0 ]; then
  echo "Not root user" && exit
fi

# Check if the platform the script is running on is Linux
if [ "$(uname)" != "Linux" ]; then
  echo "This is not a Linux platform" && exit 1
fi

# Check the release file of the OS
linux_flavor() {
  if grep -iq 'centos' /etc/*-release; then
    echo "CentOS is a Linux distribution that provides a free and open-source community-supported computing platform"
  elif grep -iq 'redhat' /etc/*-release; then
    echo "Red Hat, Inc. is an American software company that provides open source software products"
  elif grep -iq 'suse' /etc/*-release; then
    echo "SuSe is a German-based multinational open-source software company"
  else
    echo "Another Linux distribution."
  fi
}

linux_flavor

