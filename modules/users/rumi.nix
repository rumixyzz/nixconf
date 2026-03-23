{
config,
pkgs,
...
}: {
  users.users.rumi = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
    packages = with pkgs; [
      tree
    ];
  };
}
