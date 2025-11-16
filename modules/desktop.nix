{ config, pkgs, ... }:

{
    imports = [
        # ./hyprland.nix

        #./firefox.nix
        #./bash.nix
        #./vscodium.nix
    ];

    services.xserver = {
        enable = true;
        displayManager.sddm = {
            enable = true;
            wayland.enable = true;
        };
    };

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };


}
