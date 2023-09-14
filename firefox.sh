#!/bin/bash

#Firefox Linux amd64 TR stable için:
wget -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=tr"

#Firefox Linux amd64 TR Beta için kodu aktif ediniz!!!:
#wget -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-beta-latest-ssl&os=linux64&lang=tr"

mkdir ~/.local/share/applications
cat >> $HOME/.local/share/applications/Firefox.desktop << EOF
[Desktop Entry]
Version=1.0
Name=Firefox
Comment=İnternet'te Gezinin
GenericName=Web Tarayıcı
Keywords=Internet;WWW;Browser;Web;Explorer
Exec=firefox
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=$HOME/.local/firefox/browser/chrome/icons/default/default128.png
Categories=GNOME;GTK;Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;x-scheme-handler/chrome;video/webm;application/x-xpinstall;
StartupNotify=true
EOF
tar -xjf /tmp/firefox.tar.bz2 -C ~/.local

sudo apt install libdbus-glib-1-2
sudo ln -s $HOME/.local/firefox/firefox /usr/bin/firefox
