{
config,
pkgs,
...
}: {
    home.packages = with pkgs; [
        librewolf
        pamixer
        gh
    ];
}
