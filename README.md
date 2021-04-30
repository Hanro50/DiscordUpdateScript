# Discord Update Script for debian based distros 
An easy to run script that downloads and then install discord onto a Debian based system. This script is meant to automate the installation process
# Tested on
kubuntu 21.04

# How to use
1) Download the script from releases
2) Make the script file executable `chmod +x DiscordUpdate.sh`
3) Run the script `./DiscordUpdate.sh`

# Dependencies
wget -> Downloading .deb package<br>
pkexec -> Needed to gain root<br>
apt -> Needed to install the .deb package <br>

###### All these help with gui generation and are probably already installed
zenity<br>
sed<br>
grep<br>
echo<br>
