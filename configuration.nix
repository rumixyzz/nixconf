{ config, lib, pkgs, ... }:

{
  imports = [
      ./hardware-configuration.nix
    ];

  # Inital version
  system.stateVersion = "25.11";
}
