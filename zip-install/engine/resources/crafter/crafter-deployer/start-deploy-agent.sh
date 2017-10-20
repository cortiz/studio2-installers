#!/bin/sh

if [ "$(whoami)" == "root" ]; then
	echo -e "\033[38;5;196m"
    echo "Do not run CrafterCMS as root"
    echo -e "\033[0m"
	exit 1
fi

nohup java -server -Djava.ext.dirs=. -classpath .:conf org.craftercms.cstudio.publishing.PublishingReceiverMain >> deployment.out 2>&1&
