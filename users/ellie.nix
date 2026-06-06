{ config, pkgs, ... }:

{
    isNormalUser = true;
    description = "Ellie Byrne";
    extraGroups = [
        "networkmanager"
        "wheel"
        "video"
        "audio"
    ];

    # Stuff unique to ellie    
    packages = with pkgs; [
    ];

    home = "/home/ellie";
    # shell = pkgs.bash;
}