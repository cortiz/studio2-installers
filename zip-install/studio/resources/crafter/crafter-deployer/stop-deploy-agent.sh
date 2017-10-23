#!/bin/sh
if [ "$(whoami)" == "root" ]; then
	echo -e "\033[38;5;196m"
	echo -e "Crafter CMS cowardly refuses to run as root."
    echo -e "Running Crafter CMS as root is extremely dangerous."
    echo -e "\033[0m"
	exit 1
fi
nohup java -server -Djava.ext.dirs=. org.craftercms.cstudio.publishing.StopServiceMain >> deployment.out 2>&1
