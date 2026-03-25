# nixconf

this is my configuration of NixOS. It contains all of the dotfiles I use on NixOS as well. In order to use this configuration on your NixOS (I recommend a fresh install that ain't much tweaked), run this command:

(edit the variables in the beginning of the commands according to your system)

```bash
GIT="git"
HARDWARE="/etc/nixos/hardware-configuration.nix"
SUDO="sudo"

[ -e "$HOME/nixconf" ] && { mv ~/nixconf ~/nixconf.bak; }
$GIT clone https://github.com/rumixyzz/nixconf.git --depth=1 ~/nixconf

rm ~/nixconf/hardware-configuration.nix
$SUDO cp "$HARDWARE" ~/nixconf/hardware-configuration.nix
$SUDO chown $USER:users ~/nixconf/hardware-configuration.nix

# build domus
$SUDO nixos-rebuild switch --flake ~/nixconf#domus
```
