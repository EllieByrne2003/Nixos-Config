{ config, pkgs, ... }:

{
    imports = [
        ./hyprland.nix

        ./firefox
        ./bash
        ./vscodium
    ];
}