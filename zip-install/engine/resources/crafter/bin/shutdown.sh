#!/bin/sh

if [ "$(whoami)" == "root" ]; then
	echo -e "\033[38;5;196m"
	echo -e "Crafter CMS cowardly refuses to run as root."
    echo -e "Running as root is dangerous and is not supported."
    echo -e "\033[0m"
	exit 1
fi

export CATALINA_PID=./apache-tomcat/temp/catalina.pid

SECS_BEFORE_KILL=10

cd ..

echo "************************************************************"
echo "Stopping Tomcat..."
echo "************************************************************"
sh ./apache-tomcat/bin/shutdown.sh $SECS_BEFORE_KILL -force

echo "************************************************************"
echo "Stopping publishing receiver..."
echo "************************************************************"
cd ./crafter-deployer
sh ./stop-deploy-agent.sh
cd ..

cd ./bin
