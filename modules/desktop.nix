{ config, pkgs, ... }:

{
    imports = [
        ./hyprland.nix

        ./firefox
        ./hyfetch
        ./bash
        ./vscodium
    ];
}