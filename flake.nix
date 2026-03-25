{
  description = "Rumi's nixos";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    import-tree.url = "github:vic/import-tree";

    home-manager = {
    	url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak = {
        url = "github:gmodena/nix-flatpak?ref=latest";
    };
  };

  outputs = { nixpkgs, import-tree, home-manager, nix-flatpak, ... } @inputs: {
    nixosConfigurations.domus = nixpkgs.lib.nixosSystem {
        modules = [
                ./configuration.nix
                nix-flatpak.nixosModules.nix-flatpak
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
