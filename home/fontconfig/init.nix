{
config,
pkgs,
...
}: {
	fonts.fontconfig = {
		enable = true;
		defaultFonts = {
			monospace = [ "Maple Mono NF" ];
		};
	};
}
