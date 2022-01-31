# Citadel

This is a twist on ReconWiz (found here: https://github.com/L10nzD3n/Reconwiz).
Changes include adding rustscan and whatweb, and replacing dirbuster with gobuster for faster processing time. 
I've modified the directory structure and removed some elements that I found to be cluttering for my taste. 

If you run the binary within your host, it will automatically verify that utilities are in place before attempting to use them, and if you don't have them, it will install them for you.

You can also run this in Docker, and this will prevent you from downloading utilities onto your host machine. It will run within the container and spit out the results to your host. 

# Executing on Host
Download the binary, ensure it's executable (chmod +x), and run it with "sudo ./citadel IP" 

You can also clone this repo (git clone), cd into it, and type "sudo make runlocal target=IP"

# Executing in Docker
Download Docker (sudo apt install docker.io) 

Make sure Docker is running (systemctl status docker)

Clone this repo

Cd into it 

chmod +x citadel

make target=IP
