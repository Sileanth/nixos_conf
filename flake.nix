{
  
  inputs = {
	nixpkgs.url = "nixpkgs/nixos-unstable";
  	home-manager.url = "github:nix-community/home-manager";
    	home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = inputs@{nixpkgs, home-manager, ... }:  
	let
		system = "x86_64-linux";

		pkgs =  import nixpkgs {
			inherit system;
			config = {
				allowUnfree = true;
			};

		};
		
		lib = nixpkgs.lib;
	in {
		nixosConfigurations = {
			inspiron = lib.nixosSystem {
				inherit system;

				modules = [
					./configuration.nix
					 home-manager.nixosModules.home-manager {
            					home-manager.useGlobalPkgs = true;
            					home-manager.useUserPackages = true;
            					home-manager.users.sileanth = import ./home.nix;
            					# Optionally, use home-manager.extraSpecialArgs to pass
           					 # arguments to home.nix
          				}
				];
			};
		};
	};

  }

