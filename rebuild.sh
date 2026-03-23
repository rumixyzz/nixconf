#!/bin/sh
git add .
git commit -m "automated update"
sudo nixos-rebuild switch --flake ~/nixconf#domus
