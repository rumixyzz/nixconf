{
config,
pkgs,
...
}: {
    services.polybar.enable = true;
    services.polybar.script = ''
        polybar example &
    '';
    services.polybar.config = ./config.ini;
}
