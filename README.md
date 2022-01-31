# Citadel

This is a twist on ReconWiz (found here: https://github.com/L10nzD3n/Reconwiz).
Changes include adding rustscan and whatweb, and replacing dirbuster with gobuster for faster processing time. 
I've modified the directory structure and removed some elements that I found to be cluttering for my taste. 

If you run the binary within your host, it will automatically verify that utilities are in place before attempting to use them, and if you don't have them, it will install them for you.

You can also run this in Docker, and this will prevent you from downloading utilities onto your host machine. It will run within the container and spit out the results to your host. 

# Executing on Host
***Note, this method will automatically check/install utilities to your host***
## Binary Alone
Download the citadel file

chmod +x citadel

sudo ./citadel IP

## Git Clone

git clone https://github.com/taplummer/Citadel

cd /Citadel

chmod +x citadel

sudo make runlocal target=IP

# Executing Within Docker
Download Docker (sudo apt install docker.io) 

Make sure Docker is running (systemctl status docker)

git clone https://github.com/taplummer/Citadel

cd /Citadel

chmod +x citadel

make target=IP
