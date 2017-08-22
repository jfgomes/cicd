#! /bin/bash
set -e

declare -r repo=dummyapp
declare -r gitrepo=git@github.com:jfgomes/cicd.git

	if [ ! -d "$repo" ]; then
		echo "Initialazing $repo repo"
		mkdir $repo
		cd $repo
		git clone $gitrepo .
		git fetch origin
		git checkout master
		git pull origin master
		#cp setup/*.docker.ini .
        	#git submodule init && git submodule update
        else 
                echo "directory $repo already exists...Skipping"
fi
