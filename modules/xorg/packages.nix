{
    config,
    pkgs,
    ...
}:
{
  environment.systemPackages = with pkgs; [
      xinit
      xsel
      xset
      dmenu
      hsetroot
  ];
}
