# Citadel

This is a twist on ReconWiz (found here: https://github.com/L10nzD3n/Reconwiz).
Changes include adding rustscan and whatweb, and replacing dirbuster with gobuster for faster processing time. 
I've modified the directory structure and removed some elements that I found to be cluttering for my taste. 

The main differences between Citadel and Reconwiz are that Citadel will give you one directory which contains all of your scan results, it has slightly more optimized scanning tools, it will automatically install tools if you don't have them, and it can be run completely within a docker container if you don't have/want to install the necessary utilities. 

If you run the binary within your host, it will automatically verify that utilities are in place before attempting to use them, and if you don't have them, it will install them for you.

You can also run this in Docker, and this will prevent you from downloading utilities onto your host machine. It will run within the container and spit out the results to your host. 

Changes FEB 1, 2022: I've added a few lines that will ```grep``` the Rustscan results for the port numbers and plug that directly into your ```nmap``` scan to shorten the scan time. Additionally, Citadel will search for possible exploits on ExploitDB based on the ```nmap``` results and save them to "info" directory.  

# Executing on Host
***Note, this method will automatically check/install utilities to your host***
## Binary Alone
Download the citadel file

```chmod +x citadel```

```sudo ./citadel IP```

## Git Clone

```git clone https://github.com/taplummer/Citadel```

```cd /Citadel```

```chmod +x citadel```

```sudo make runlocal target=IP```

# Executing Within Docker
Download Docker (```sudo apt install docker.io```) 

Make sure Docker is running (```systemctl status docker```)

```git clone https://github.com/taplummer/Citadel```

```cd /Citadel```

```chmod +x citadel```

```make target=IP```

***On some distros, the "make" command above may not work. If it throws an error (other than telling you to run with ```sudo```), use the command below***

```docker run -v $(pwd):/host -it citadel:latest /host/citadel <IP address>```

Again, depending on docker's permissions, you may need to run this with ```sudo```.
