{
pkgs,
...
}: {
	environment.systemPackages = with pkgs; [
		nerd-fonts.meslo-lg
		joypixels
	];
	nixpkgs.config.joypixels.acceptLicense = true;
}
