{
config,
pkgs,
...
}: {
    home.file.".xinitrc".source = ./xinitrc;
    home.file."bg".source = ./bg;
}
