# firefoxkur
Firefox latest installer for Debian

Bu scprit Debian yada Debian tabanlı işletim sistemleri için en son sürüm Firefox Türkçe web tarayıcı kurulumunu yapar.

# Firefox sisteme kurulum için: 
İndirdiğiniz dizinde terminal açıp aşağıdaki komutu girmeniz yeterli. 
```
wget https://raw.githubusercontent.com/mobilturka/firefoxkur/main/firefoxkur.sh
chmod +x firefoxkur.sh && ./firefoxkur.sh
```

# Firefox sistemden kaldırmak için:
```
sudo rm /usr/bin/firefox && rm -rf $HOME/.local/firefox && rm $HOME/.local/share/applications/Firefox.desktop
```
