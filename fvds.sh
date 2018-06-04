echo "Cleaning APT packages"
apt clean
sleep 2
echo "Done cleaning APT packages"
echo "Performing TRIM operations"
for mount in / /boot /home /swap; do
	fstrim $mount;
done
echo "All done!"