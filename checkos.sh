#!/bin/sh

# Check if the script is run by the root user
# Root user ID is 0, it checks whether the user's ID is not equal to zero to exit the script
if [ "$(id -u)" -ne 0 ]; then
  echo "Not root user"
  exit
fi

# Check if the platform the script is running on is Linux
# The 'uname' command writes to standard output the name of the OS and returns an exit status 1 (indicates there was an issue caused the program to exit)
if [ $(uname) != "Linux" ]; then
  echo "This is not a Linux platform" && exit 1
fi

# Check the release file of the OS, and then use grep with -i (ignore case sensitive) and -q (quiet, not write anything to stdout)
# Use 'grep' directly on the release files to find the distribution name
linux_flavor() {
  if grep -iq 'centos' /etc/*-release; then
    echo "CentOS"
  elif grep -iq 'redhat' /etc/*-release; then
    echo "RedHat"
  elif grep -iq 'suse' /etc/*-release; then
    echo "SuSe"
  else
    echo "Another Linux distribution."
  fi
}

# Assign the distribution string to the 'distro' variable (either RedHat, CentOS, SuSe, or Other).
distro=$(linux_flavor)

# Use a switch case to print the desired result that matches the Linux distribution
case $distro in
  RedHat)
    echo "Red Hat, Inc. is an American software company that provides open source software products";;
  CentOS)
    echo "CentOS is a Linux distribution that provides a free and open-source community-supported computing platform";;
  SuSe)
    echo "SUSE is a German-based multinational open-source software company";;
  *)
    echo "Another Linux distribution.";;
esac

