{ config, pkgs, ... }:

{
    isNormalUser = true;
    description = "Ellie Byrne";
    extraGroups = [
        "networkmanager"
        "wheel"
    ];

    # Stuff unique to ellie    
    packages = with pkgs; [
        android-studio
    ];

    home = "/home/ellie";
    # shell = pkgs.bash;
}