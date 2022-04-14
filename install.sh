#!/bin/bash

# add PS1 variable at the end of rc file.
# Prompt will end with # when shell open in screen, otherwise with default ending char

if [ $SHELL = "/bin/bash" ]; then
  RC_FILE="$HOME/.bashrc";
  BEFORE="$(wc -l < $RC_FILE)";
  echo "PS1=\"\[\e]0;\u@\h: \w\a\]\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\\\$([ -z \$STY ] && echo \\\$ || echo '#' ) \"" >> ~/.bashrc
  AFTER="$(wc -l < $RC_FILE)";
  echo "OK. Add $(($AFTER - $BEFORE)) lines to $RC_FILE";
# elif zsh
# then
# ..
else
  echo "Sorry, shell $SHELL is unsupported"
fi
