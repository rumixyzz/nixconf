{
config,
pkgs,
...
}: {
    services.xserver.windowManager.qtile.enable = true;
    environment.systemPackages = with pkgs.python314Packages; [ qtile-extras ];
}
