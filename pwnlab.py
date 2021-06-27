#!/usr/bin/env python3

from sys import argv, exit
from subprocess import call

p = 'docker run -it -h pwnlab pwnlab zsh'.split(' ')

if len(argv) > 1:
    if argv[1] == 'help':
        print(f'Usage: {argv[0]} [help] [volume-absolute-path]')
        exit(0)
    else:
        path = argv[1]
        volume = f'{path}:/root/{path.split("/")[-1]}'

        p.insert(5, volume)
        p.insert(5, '-v')

call(p)
