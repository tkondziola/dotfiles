#! /usr/bin/env python

import os
import subprocess

def getrepository():
    repoUrl = "https://github.com/tkondziola/dotfiles"

    subprocess.


def deploy():
    dst = os.getenv('XDG_CONFIG_HOME')
    if not dst:
        print('XDG_CONFIG_HOME is not defined. Please define it and run script once again.')
        return 1
    print('XDG_CONFIG_HOME : {}'.format(dst))

def main():
    deploy()

if __name__ == '__main__':
    main()
