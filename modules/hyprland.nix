{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        hyprland
        # hyprpaper
        hyprlock
        # hypridle
        hyprcursor      # TODO not set up yet

        waybar

		kitty           # Terminal
		walker          # for wayland apps
		seahorse        # for managing keys in gnome-keyring
		hyprshot        # screenshot program # TODO not set up yet
		wl-clip-persist # For copy-pasting
		gedit           # Simple GUI editor
		superfile       # termainal based file explorer
    ];

    programs.hyprland = {
        enable = true;

        # package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    };

    programs.hyprlock.enable = true;
    security.pam.services.hyprlock = {};

    # security.wrappers.hyrplock = {
    #     source = "${pkgs.hyprlock}/bin/hyprlock";
    #     capabilities = "cap_sys_admin+ep";
    #     owner = "root";
    #     group = "root";
    # };

    security.wrappers.hyrplock = {
        source = "${pkgs.hyprlock}/bin/hyprlock";
        capabilities = "cap_sys_admin+ep";
        owner = "root";
        group = "root";
    };
}