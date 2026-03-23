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
    };
    environment.systemPackages = with pkgs; [
        xinit
        xsel
        xset
        dmenu
    ];
}
