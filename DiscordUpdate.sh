#!/usr/bin/env bash
download()
{
    local url=$1
    wget -O /tmp/discord-installer.deb --progress=dot $url 2>&1 | grep --line-buffered "%" | \
        sed -u -e "s,\.,,g" | awk '{printf("%4s\n", $2)}' | sed -u -e 's/^[[:space:]]*//'  | \
        zenity --width=300 --progress --title "Downloading discord..." --text="This could take a moment!" --percentage=0 --auto-close --no-cancel

    echo " DONE"
}
installDeb(){

(
script -c 'pkexec --user root apt install /tmp/discord-installer.deb -y;' -e /dev/null ; \
echo ""; \
echo "Done installing!";\
echo "You can close this window now!"; \
echo "started Discord!"; \
discord >/dev/null 2>&1;\

)|zenity --text-info --title "Installing" --auto-scroll 
}
### download and install as root
download "https://discordapp.com/api/download?platform=linux&format=deb"
installDeb 


