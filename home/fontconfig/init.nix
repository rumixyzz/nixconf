{
config,
pkgs,
...
}: {
	fonts.fontconfig = {
		enable = true;
		defaultFonts = {
			monospace = [ "MesloLGM Nerd Propo" ];
			emoji = [ "JoyPixels" ];
		};
	};
}
