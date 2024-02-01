# Brightness for second monitor tool 'ddcutil'
sudo add-apt-repository ppa:rockowitz/ddcutil
sudo apt update
sudo apt install ddcui ddcutil
sudo gpasswd --add $USER i2c
sudo ddcutil detect                             # show monitors info
sudo ddcutil -d 1 getvcp 10                     # detect brightness in %
sudo ddcutil -d 1 setvcp 10 50                  # set to 50% of brightness