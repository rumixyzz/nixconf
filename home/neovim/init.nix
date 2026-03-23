{
config,
pkgs,
...
}: {
	programs.neovim = {
		enable = true;
		plugins = with pkgs.vimPlugins; [
			nvim-treesitter.withAllGrammars
			gruvbox-nvim
			lualine-nvim
		];
	};
	xdg.configFile."nvim".source = ./config;
}
