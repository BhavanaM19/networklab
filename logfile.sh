#! /bin/bash

if [ $# -eq 0 ]
then
	echo "Please try again with a valid argument";
 	exit
fi

	lastLogin=$(last -n 1);
	echo "Last logged in user is $lastLogin"
	
	loginAttempts=$(sudo cat /var/log/auth.log | grep $1 | grep failed)
	echo "Failed login attempts of $1 are:"
	echo "Here: $loginAttempts" 

	
