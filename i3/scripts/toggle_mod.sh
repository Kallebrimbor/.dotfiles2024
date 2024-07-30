#!/bin/bash

CONFIG=~/.config/i3/config  # Path to your i3 config file
MOD1="set \$mod Mod1"
MOD4="set \$mod Mod4"

if grep -q "$MOD1" $CONFIG; then
  sed -i "s/$MOD1/$MOD4/" $CONFIG
else
  sed -i "s/$MOD4/$MOD1/" $CONFIG
fi

i3-msg reload
