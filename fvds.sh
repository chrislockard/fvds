#!/bin/bash
if [ "$(grep -Ei 'debian|buntu|mint' /etc/*release)" ]; then
	echo "Cleaning APT packages"
	apt clean
	sleep 2
	echo "Done cleaning APT packages"
	echo "Cleaning ~/.cache and ~/.local"
	rm -rf ~/.cache ~/.local 
	echo "Performing TRIM operations"
	for mount in / /boot /home /swap; do
		fstrim $mount;
	done
	echo "All done!"
elif [ "$(grep -Ei 'fedora|redhat|rhel' /etc/*release)" ]; then
	echo "Cleaning YUM/DNF packages"
	yum clean all
	sleep 2
	dnf clean all
	echo "Done cleaning YUM/DNF packages"
	echo "Performing TRIM operations"
	for mount in / /boot /home /swap; do
		fstrim $mount;
	done
	echo "All done!"
fi
