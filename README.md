# nixconf

this is my configuration of NixOS. It contains all of the dotfiles I use on NixOS as well. In order to use this configuration on your NixOS, run this command:

```bash
git clone https://github.com/rumixyzz/nixconf --depth=1 ~/nixconf
sudo nixos-rebuild switch --flake ~/nixconf#domus
```
