This shell script checks the OS Type, if running on Linux platform, return the distribution (RedHat, CentOS, SuSe or other).
The script should be run only as root user.

- Root User Check: Verifies if the script is run by the root user. Exits with a message if root privileges are required.
- Linux Platform Check: Determines if the platform is Linux. Exits with a message if it is not a Linux platform with exit status 1.
- Distribution Check: Reads the OS release file (/etc/*-release) to identify the Linux distribution. Searches for patterns using grep with the -i flag for case-insensitive matching and the -q flag to suppress output.
- Result Printing: Prints specific information based on the detected distribution. Supported distributions: RedHat, CentOS, SuSe. Displays a generic message if the distribution is unrecognized.

I have tested the script in Ubuntu, SuSe, RedHat, CentOS and macOS via EC2 instances in AWS.

This task provided me an opportunity to learn about Unix commands and bash scripting.
I Enjoyed the challenge!

