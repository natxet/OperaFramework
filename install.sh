#!/bin/bash
# This script will install the Opera PHP Framework
mkdir -p httpdocs
mkdir -p scripts
echo "Downloading basic framework files"
wget -q -O httpdocs/.htaccess https://raw.github.com/natxet/OperaFramework/master/httpdocs/.htaccess
wget -q -O httpdocs/index.php https://raw.github.com/natxet/OperaFramework/master/httpdocs/index.php
wget -q -O scripts/cli.php https://raw.github.com/natxet/OperaFramework/master/scripts/cli.php
wget -q -O scripts/post-commit.sh https://raw.github.com/natxet/OperaFramework/master/scripts/post-commit.sh
wget -q -O composer.json https://raw.github.com/natxet/OperaFramework/master/composer.json

echo "Type the name of your Application and[ENTER]"
echo " (a folder will be created in ./app/YourApplicationName):"
read app
mkdir -p "app/$app"
echo "Folder created: ./app/$app"

echo "Downloading composer for dependencies"
wget -q -O composer.phar http://getcomposer.org/composer.phar

echo "Downloading dependencies (libraries) in ./vendor"
echo "This might take some minutes"
echo "If you recieve an error, just type:"
echo " php composer.phar install"
php composer.phar -q install
