The primary objective of this shell script is to identify the operating system (OS) platform. If the platform is determined to be Linux, the script proceeds to identify and return the Linux distribution. However, if the platform is not Linux, the script exits with a status code of 1.
It is designed to be executed with root privileges.


- Root User Check: Verifies if the script is run by the root user. Exits with a message if root privileges are required.
 `- Root user ID is 0, it checks whether the user's ID is not equal to zero to exit the script`
- Linux Platform Check: Determines if the platform is Linux. Exits with a message if it is not a Linux platform with exit status 1.
 `- The 'uname' command writes to standard output the name of the OS and returns an exit status 1 (indicates there was an issue caused the program to exit)`
- Distribution Check: Reads the OS release file (/etc/*-release) to identify the Linux distribution. Searches for patterns using grep with the -i flag for case-insensitive matching and the -q flag to suppress output.
- Result Printing: Prints specific information based on the detected distribution. Supported distributions: RedHat, CentOS, SuSe. Displays a generic message if the distribution is unrecognized.

The script has been tested successfully on various Linux distributions, including Ubuntu, SuSe, RedHat, CentOS, and macOS (using EC2 instances on AWS).

This task provided an excellent opportunity to gain practical knowledge of linux commands and bash scripting. It was a valuable learning experience, and I thoroughly enjoyed the challenge.
