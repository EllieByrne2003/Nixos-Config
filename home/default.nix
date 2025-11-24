{ config, pkgs, ... }:

{
    imports = [
        ../modules/bash.nix
        ../modules/firefox.nix
        ../modules/vscodium.nix
    ];

    home.packages = with pkgs; [
        waybar

        kitty
        walker
        seahorse
        hyprshot
        wl-clip-persist
        gedit
        superfile
    ];

    services.hypridle = {
        enable = true;

        settings = {
            general = {
                after_sleep_cmd = "hyprctl dispatch dpms on";
                ignore_dbus_inhibit = false;
                lock_cmd = "hyprlock";
            };

            listener = [
                {
                    timeout = 300; # 5 minutes
                    on-timeout = "hyprlock";
                }
                {
                    timeout = 360; # 6 minutes
                    on-timeout = "hyprctl dispatch dpms off";
                    on-resume = "hyprctl dispatch dpms on";
                }
                {
                    timeout = 600; # 10 minutes
                    on-timeout = "systemctl suspend";
                }
            ];
        };
    };

	# systemd.user.services.hypr-service = {
	# 	Unit = {
	# 		Description = "Starts hyprland on startup";
	# 		After = [ "graphical-session.target" ];
	# 	};
	# 	Service = {
	# 		Type = "Simple";
	# 		ExecStart = "${pkgs.hyprland}/bin/hyprland";
	# 	};
	# 	Install = {
	# 		WantedBy = [ "graphical-session.target" ];
	# 	};
	# };
}
