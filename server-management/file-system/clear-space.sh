# Cleaning packages
sudo apt autoremove
sudo apt autoclean

# Clean Up Systemd Journal Logs
sudo journalctl --vacuum-time=3d  # Keeps logs for the last 3 days
sudo journalctl --vacuum-size=100M  # Limits the log size to 100MB

# Remove Temporary Files
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

# Check Disk Usage
du -h --max-depth=1 /  # Check the size of directories in the root
du -h --max-depth=1 ~/  # Check the size of directories in the home directory

# Find the top 10 largest files on the entire system
sudo find / -type f -exec du -h {} + | sort -rh | head -n 10

# Find top 10 largest files in specific directory
sudo du -ah /home | sort -rh | head -n 10