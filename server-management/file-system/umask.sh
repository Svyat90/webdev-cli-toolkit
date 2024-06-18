umask 0022                              # set default value in current session 
umask 0027                              # set good permissions to production env
umask 0000                              # set max permissions in current session to new created files (development)

# To permanently change your umask you need to add 'umask 0000' to your shell profile:
nano ~/.profile
nano ~/.bashrc
nano ~/.zshrc                           # if exists                               
nano ~/.cshrc                           # if exists