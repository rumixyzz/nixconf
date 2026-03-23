{
pkgs,
...
}: {
	environment.systemPackages = with pkgs; [
		nerd-fonts.meslo-lg
		nerd-fonts.jetbrains-mono
	];
}
