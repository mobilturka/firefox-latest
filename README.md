# firefox-tr
Firefox TR latest installer for Debian

Bu scprit Debian yada Debian tabanlı işletim sistemleri için en son sürüm Firefox Türkçe web tarayıcı kurulumunu yapar.

# Firefox sisteme kurulum için: 
```
wget https://raw.githubusercontent.com/mobilturka/firefox-latest/main/firefox.sh
chmod +x firefox.sh && ./firefox.sh && rm firefox.sh
```

# Firefox sistemden kaldırmak için:
```
sudo rm /usr/bin/firefox && rm -rf $HOME/.local/firefox && rm $HOME/.local/share/applications/Firefox.desktop
```


# Firefox Orjinal deposunu eklemek ve sisteme kurmak için:
```
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla
sudo apt update && sudo apt install firefox firefox-l10n-tr -y
```
