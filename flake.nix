{
    description = "Ellie Byrne's Nixos configuration";

    inputs = {
        nixpkgs.url = "github/:NixOS/nixpkgs/nixos-25.05";

        home-manager = {
            url = "github:nix-community/home-manager";

            inputs.nixpkgs.follows = "nixpkgs";
        };

        hyprland = {
            url = "github:hyprwm/Hyprland";

            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, hyprland, ...}@inputs: {
        nixosConfigurations = {
            demeter = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";

                modules = [
                    ./hosts/demeter/default.nix

                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;

                        home-manager.users.ellie = import ./home/ellie.nix
                    }
                ];
            }
        };
    };
}