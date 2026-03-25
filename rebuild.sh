#!/bin/sh
git add .
git commit -m "$1"
sudo nixos-rebuild switch --flake ~/nixconf#domus
