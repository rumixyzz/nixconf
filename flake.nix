{
  description = "Rumi's nixos";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    import-tree.url = "github:vic/import-tree";

    home-manager = {
    	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, import-tree, home-manager, ... } @inputs: {
    nixosConfigurations.domus = nixpkgs.lib.nixosSystem {
        modules = [
            ./configuration.nix
            (import-tree ./modules)
	    home-manager.nixosModules.home-manager
	    {
		home-manager.useGlobalPkgs = true;
		home-manager.useUserPackages = true;
		home-manager.backupFileExtension = "bakup";

		home-manager.users.rumi = ./home.nix;
	    }
        ];
    };
  };
}
