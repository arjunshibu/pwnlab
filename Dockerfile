FROM ubuntu:21.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y wget curl python3 python3-pip gcc-multilib gdb make git tmux vim zsh

RUN pip install pwntools ropper keystone-engine

RUN curl -fsSL http://gef.blah.cat/sh | bash

WORKDIR /root

COPY . .

RUN for r in $(ls releases); do bash -c releases/$r; done && \
    rm -rf releases

RUN apt install -y strace ltrace dnsutils net-tools inetutils-ping netcat unzip unrar jq
RUN apt install -y hexedit systemd-coredump

CMD ["zsh"]
