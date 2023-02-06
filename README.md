# firefoxkur
Firefox latest installer for Debian

Bu scprit Debian yada Debian tabanlı işletim sistemleri için en son sürüm Firefox Türkçe web tarayıcı kurulumunu yapar.

# Firefox sisteme kurulum için: 
İndirdiğiniz dizinde terminal açıp aşağıdaki komutu girmeniz yeterli. 
```
chmod +x firefoxkur.sh && ./firefoxkur.sh
```

# Firefox sistemden kaldırmak için:
```
rm -rf $HOME/.local/firefox && rm $HOME/.local/share/applications/Firefox.desktop
```
Önemli: libdbus-glib-1-2 paketi kurulu değilse kurmanız lazım.
```
sudo apt install libdbus-glib-1-2
```
