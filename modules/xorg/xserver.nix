{
    config,
    pkgs,
    ...
}:
{
    services.xserver = {
        enable = true;
        displayManager = {
            lightdm.enable = false;
            startx.enable = true;
        };
        xkb.layout = "us";
    };
}
