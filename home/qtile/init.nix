{
config,
pkgs,
...
}: {
    xdg.configFile."qtile".source = ./config;
}
