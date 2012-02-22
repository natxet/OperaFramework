echo "*** BEGIN pre-commit"
echo "** Environment $1"
echo "** App $2"
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
echo "** Executing AssetsParser"
php $DIR/cli.php \\OperaCore\\Cli\\AssetsParser $1 $2
echo "*** END pre-commit"
