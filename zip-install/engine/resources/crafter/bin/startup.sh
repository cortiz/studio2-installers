#!/bin/sh



if [ "$(whoami)" == "root" ]; then
	echo -e "\033[38;5;196m"
	echo -e "Crafter CMS cowardly refuses to run as root."
    echo -e "Running as root is dangerous and is not supported."
    echo -e "\033[0m"
	exit 1
fi

export crafterHome="$(dirname "$(pwd)")"
export JAVA_OPTS="-XX:MaxPermSize=512m -Xms128m -Xmx1024m -Dcrafter.home=$crafterHome"
export CATALINA_PID=./apache-tomcat/temp/catalina.pid

cd ..

echo "************************************************************"
echo "Starting publishing receiver..."
echo "************************************************************"
cd ./crafter-deployer
sh ./start-deploy-agent.sh
cd ..

echo "************************************************************"
echo "Starting Tomcat..."
echo "************************************************************"
sh ./apache-tomcat/bin/catalina.sh start -security

cd ./bin

echo "************************************************************"
echo "Tailing catalina.out..."
echo "************************************************************"
tail -f ../apache-tomcat/logs/catalina.out
