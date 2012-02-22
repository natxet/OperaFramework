#!/bin/bash
# This script will install the Opera PHP Framework

mkdir -p httpdocs
mkdir -p scripts
mkdir -p app

echo "Downloading basic framework files"
curl -k -s -o httpdocs/.htaccess https://raw.github.com/natxet/OperaFramework/master/httpdocs/.htaccess
curl -k -s -o httpdocs/index.php https://raw.github.com/natxet/OperaFramework/master/httpdocs/index.php
curl -k -s -o scripts/cli.php https://raw.github.com/natxet/OperaFramework/master/scripts/cli.php
curl -k -s -o scripts/post-commit.sh https://raw.github.com/natxet/OperaFramework/master/scripts/post-commit.sh
curl -k -s -o composer.json https://raw.github.com/natxet/OperaFramework/master/composer.json

rm -f composer.phar
rm -f composer.lock
rm -Rf vendor

echo "Downloading composer for dependencies"
curl -s -o composer.phar http://getcomposer.org/composer.phar

echo "Downloading dependencies (libraries) in ./vendor"
echo "This might take some minutes"
echo "If you recieve an error, just type:"
echo " php composer.phar install"
php composer.phar -q install

curl -k -s -o vendor/.gitignore https://raw.github.com/natxet/OperaFramework/master/vendor/.gitignore

