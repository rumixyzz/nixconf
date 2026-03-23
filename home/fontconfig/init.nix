{
config,
pkgs,
...
}: {
	environment.systemPackages = with pkgs; [
		nerd-fonts.meslo-lg
		joypixels
	];
	fonts.fontconfig = {
		enable = true;
		defaultFonts = {
			monospace = [ "MesloLGM Nerd Propo" ];
			emoji = [ "JoyPixels" ];
		};
	};
}
