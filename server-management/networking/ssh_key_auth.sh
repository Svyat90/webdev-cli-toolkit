# open or create authorized_keys file on local machine:
nano ~/.ssh/authorized_keys
# put new line with public key
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAw5MF7XE8Qyvk1In958vnN5XtGNvPAS1ICeMkPh5H0xQBj2kEVoZNA4d/2TfNC0D9bpk6wdrcuLUyKQtTsPjCul1z3b/GbBG5vUCKVSGb/E2k885CBYIAhgBwiwLpVjh6kFlOpfvVtmU8dcXGPMwb9GaciPfiblSgfkx/gjKXIL6NzbATviYAuOUOoJCIA3Dd+V8rF3FXwsrJM0+DnNfjFGhG8q+Gg4UCMYsg+0EgymWMv1nI0rD2n5P6/ljZPaT9/UtEBIkwXDB+xKxKJ/Ulzsog6ZPVr/K1DxNIvaN856N35p8Y6RD+e6IG9YahzQMOi+fx6UI/nCnvrUgJngL+DQ==

# create private key
nano ~/.ssh/id_rsa_sample
# set right permissions to private key
chmod 600 /~/.ssh/id_rsa_sample

# connect with private key
ssh -i ~/.ssh/id_rsa_sample -p 21098 -oHostKeyAlgorithms=ssh-rsa  user@host
# and enter passphrase if need

# or try without private key
ssh -p 21098 -oHostKeyAlgorithms=ssh-rsa  user@host
# and enter passphrase like password if need