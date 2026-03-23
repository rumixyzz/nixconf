{
config,
pkgs,
...
}:{
	home.stateVersion = "25.11";
	home.username = "rumi";
	home.homeDirectory = "/home/rumi";

	home.sessionVariables = {
		EDITOR = "nvim";
		VISUAL = "nvim";
	};

	imports = [
		./home/bspwm/init.nix
	];
}
