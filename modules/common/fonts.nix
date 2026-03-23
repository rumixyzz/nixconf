{
pkgs,
...
}: {
	environment.systemPackages = with pkgs; [
		nerd-fonts.meslo-lg
		joypixels
	];
}
