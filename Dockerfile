FROM ubuntu:18.04

RUN apt update && \
    apt install -y wget curl tmux vim nano zsh python python3 python3-pip gdb radare2 strace ltrace jq dnsutils net-tools netcat gcc-multilib git make unzip unrar fakeroot hexedit

RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
    python get-pip.py && \
    pip install pwntools

RUN bash -c "$(curl -fsSL http://gef.blah.cat/sh)" && \
    pip3 install keystone-engine unicorn capstone ropper

WORKDIR /root

COPY . .

CMD ["zsh"]
