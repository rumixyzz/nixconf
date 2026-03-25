{
config,
pkgs,
...
}: {
    services.xserver.windowManager.qtile = {
        enable = true;
        extraPackages = pythonPackages: with pythonPackages; [
            qtile-extras
        ];
    };
}
