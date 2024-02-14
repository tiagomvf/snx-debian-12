dpkg --add-architecture i386
apt update
apt-get install -y libstdc++5:i386 libx11-6:i386 libpam0g:i386

SCRIPT_URL='https://dl3.checkpoint.com/paid/72/72c2c91791690927da0586ec873430cf/snx_install_linux30.sh?HashKey=1707951487_98b1bbda1d30d3c1f611ed66c361a367&xtn=.sh' 

TEMPFILE=$(mktemp)

apt-get install -y curl
curl $SCRIPT_URL -o $TEMPFILE

bash $TEMPFILE || rm $TEMPFILE
