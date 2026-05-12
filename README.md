# Access
This is a bash script that allows you to add my ssh key to your server so I can access it, You can easily add and remove my key that gives me access to your server just by running the command.

## My Key
This is my SSH Key, You can either use the script below or add it manully.
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC35+SF+sT/gOM2864P4nLLQTK6uzgetZS1kJ1l1iCXcWjtmyC18opcXwsf5KGy9YhV5Pt8U9/fAIWtZmISGEHBtRa2fALaaZhPotYSp86N+w6S+rsZ0sb5mJ8H7JjkrMztR3tJjFo/nIdLa5tCJSX1SYrovfgmy8HX9gsD9OH4akvm+z6o85/vlVDptAO8Cnr0cQ+q6HesR3UZ8F0qU7QhqDWZqBy2XGZiCCJ0LEKtGh4uacX8jark1PVS1fVTrcylwa+Wr99e6lhV7vt66ElQKwzP+wGAkFCqas3onVbhZo0U0boMLfaWfj+MEccb/dO5StRUPpH2fWA7rQJ5p/Fl nikhil
```

## Running the Script

```bash
 bash <(curl -s https://raw.githubusercontent.com/support-NOVASERVE/Access-Novaserv/master/ssh.sh)
```

## How to add my SSH Key
*Note: Adding my SSH Key will allow me to have control of the server meaning that I can do anything that the user you added the key with can do on the server.*

1. Login to the root user or a user with sudo privallages of your server
1. Type the command ` bash <(curl -s https://raw.githubusercontent.com/support-NOVASERVE/Access-Novaserv/master/ssh.sh)`
1. Select the first option to add my key
1. Give me the server IP and the username.

## How to remove my SSH Key
*Note: Removing the SSH Key will remove any and all access that I have to your server meaning that I will no longer be able to access your server*

1. Login to the user you installed the SSH key with
1. Type the command ` bash <(curl -s https://raw.githubusercontent.com/teamdaddy1/Access-Anish/master/ssh.sh)`
1. Select the second option to remove my key.
