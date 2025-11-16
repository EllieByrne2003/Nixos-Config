{ config, pkgs, ... }:

{
    imports = [
        ./hyprland.nix

        ./firefox.nix
        #./bash.nix
        ./vscodium.nix
    ];
}
