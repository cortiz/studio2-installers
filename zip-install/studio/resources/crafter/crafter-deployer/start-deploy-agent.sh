#!/bin/sh

if [ "$(whoami)" == "root" ]; then
	echo -e "\033[38;5;196m"
	echo -e "Crafter CMS cowardly refuses to run as root."
    echo -e "Running Crafter CMS as root is extremely dangerous."
    echo -e "\033[0m"
	exit 1
fi

export deployerSecureHome=$(dirname "${BASH_SOURCE[0]}")
nohup java -server "-Ddeployer.home=$deployerSecureHome" -Djava.security.manager -Djava.security.policy==crafter.policy -Djava.ext.dirs=. -classpath .:conf org.craftercms.cstudio.publishing.PublishingReceiverMain >> deployment.out 2>&1&
