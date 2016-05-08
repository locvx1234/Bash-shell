#!/bin/bash
#Install package

INSTALL_PACKAGE()
{
	read -p "Packages install : " package_install
	sudo apt-get update
	for i in $package_install
	do 
		sudo apt-get install -y $i
	done
}

main()
{
	INSTALL_PACKAGE
}

main