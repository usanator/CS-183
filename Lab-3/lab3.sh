#!/bin/bash


#REQUIREMENT 1
echo "Find all files in /bin, /sbin, /usr/bin, and /usr/sbin that are setuid and owned by root. Why are these files potential security risks?"
read -p "Hit any key to continue."
find /bin /sbin /usr/bin /usr/sbin -user root -perm /4000	#perm 4000 displays files with setuid permissions
echo "All of these files are potential security risks because non-root users may access these files and potentially gain root user privileges"
echo

#REQUIREMENT 2
echo "Find all files across the entire system that have setuid or setgid enabled (regardless of owner)."
read -p "Hit any key to continue."
find / -perm /6000	#perm 6000 displays all setuided and setgided files
echo

#REQUIREMENT 3
echo "Find all files in /var that have changed in the last 20 minutes."
read -p "Hit any key to continue."
find /var -cmin -20	#use "cmin" to find files that changed in last 20 minutes
echo

#REQUIREMENT 4
echo "Find all files in /var that are regular files of zero length."
read -p "Hit any key to continue."
find /var -type f -size 0	#"-type f" for regular files and "-size 0" for zero length
echo

#REQUIREMENT 5
echo "Find all files in /dev that are not regular files and also not directories. The same command should print a listing that includes permissions and modification times (at a minimum) for these files."
read -p "Hit any key to continue."
find /dev -not -type f -not -type d	#use "not"
echo

#REQUIREMENT 6
echo "Find all directories in /home that are not owned by root. In the same command, change their permissions to ensure they have 711 (-rwx--x--x) permissions."
read -p "Hit any key to continue."
find /home -not -user root -type d -exec chmod 711 {} \;	#use chmod 711 to change permissions
echo

#REQUIREMENT 7
echo "Find all regular files in /home that are not owned by root. In the same command, change their permissions to ensure they have 755 (-rwx-wx-wx) permissions."
read -p "Hit any key to continue."
find /home -not -user root -type f -exec chmod 755 {} \;	#use chmod 755 to change permissions
echo

#REQUIREMENT 8
echo "Find all files (of all types) in /etc that have changed in the last 5 days."
read -p "Hit any key to continue."
find /etc -ctime -5	#ctime to see changes in last "x" days
echo
