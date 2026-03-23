{
config,
pkgs,
...
}: {
	fonts.fontconfig = {
		enable = true;
		defaultFonts = {
			monospace = [ "MesloLGM Nerd Font Propo" ];
		};
	};
}
