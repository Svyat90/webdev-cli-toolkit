# find the top 10 largest files on the entire system
sudo find / -type f -exec du -h {} + | sort -rh | head -n 10

# find top 10 largest files in specific directory
sudo du -ah /home | sort -rh | head -n 10

# Cleaning packages
sudo apt autoremove
sudo apt autoclean

# Remove the oldest archived journal files until the disk space they use falls below the specified size
sudo journalctl --vacuum-size 10M