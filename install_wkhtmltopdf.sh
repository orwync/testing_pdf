WKHTMLTOX_X64=https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.trusty_amd64.deb
WKHTMLTOX_X32=https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.trusty_i386.deb

sudo apt-get install wget git python-pip gdebi -y
#testing
if [ "`getconf LONG_BIT`" == "64" ];then
  _url=$WKHTMLTOX_X64
else
  _url=$WKHTMLTOX_X32
fi
sudo wget $_url
sudo gdebi --n `basename $_url`
sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin
