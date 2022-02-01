FROM ubuntu:21.10
LABEL maintainer="https://github.com/taplummer"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    wget \
    gobuster \
    nmap \
    nikto \
    whatweb \
    git

#Rustscan
RUN wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb && dpkg -i rustscan_2.0.1_amd64.deb

RUN mkdir /host
ENV PATH="/host:${PATH}"
WORKDIR /host
