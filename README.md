# fvds
FVDS - Free Virtual Disk Space

This tool's purpose is to automatically clean package manager caches and perform disk trim operations using fstrim. I wrote this for my virtual machines to keep them trimmed up.

**Warning: this tool's purpose is to *delete* data! Be careful when using this and do not run it if you don't fully understand the consequences!**

## Usage
In most situations, using the tool will be the same: 

~~~~
git clone https://github.com/chrislockard/fvds.git
cd fvds && chmod +x fvds.sh
./fvds.sh
~~~~

When running this tool as a regular user, invoke with sudo:

`sudo ./fvds.sh`