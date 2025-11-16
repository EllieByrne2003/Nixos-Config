{ config, pkgs, ... }:

{
    programs.home-manager.enable = true;

    home.username = "ellie";
	home.homeDirectory = "/home/ellie";

    modules = [
        ./default.nix
    ];

    home.packages = with pkgs; [
        discord
    ];

    home.stateVersion = "25.05";
}