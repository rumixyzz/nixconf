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
		./home/alacritty/init.nix
		./home/fontconfig/init.nix
		./home/neovim/init.nix
		./home/packages.nix
		./home/xinit/init.nix
        ./home/qtile/init.nix
		./home/zsh/init.nix
	];
}
