{
pkgs,
...
}: {
	environment.systemPackages = with pkgs; [
		git
		neovim # for root user
	];
}
