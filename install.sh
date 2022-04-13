#!/bin/bash

# add PS1 variable at the end of bashrc file. Prompt will end with # when shell open in screen, otherwise with $
echo "PS1=\"\[\e]0;\u@\h: \w\a\]\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\\$([ -z \$STY ] && echo \\\$ || echo '#' ) \"" >> ~/.bashrc

