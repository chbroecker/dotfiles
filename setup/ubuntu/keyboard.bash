sudo echo 'XKBOPTIONS="ctrl:swapcaps"' >> /etc/default/keyboard
sudo dpkg-reconfigure -phigh console-setup
reboot
