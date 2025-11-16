{ config, pkgs, ... }:

{
	services.hyprpaper = {
		enable = true;

        # TODO put wallpapers in some common place or make this user specific
		settings = {
			ipc = "on";
			spalsh = false;
			splash_offset = 2.0;

			preload = [
				"/home/ellie/Pictures/Wallpapers/outer-wilds.png"
			];

			wallpaper = [
				"eDP-1, /home/ellie/Pictures/Wallpapers/outer-wilds.png"
			];
		};
	};

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

	programs.hyfetch = {
		enable = true;

		settings = {
			preset = "transgender";
			mode = "rgb";
			light_dark = "dark";
			lightness = 0.65;

			color_align = {
				mode = "custom";
				custom_colors = [
					1
					0
				];
				fore_back = null;
			};

			backend = "neofetch";
			args = null;
			distro = null;
			pride_month_shown = [];
			pride_month_disable = false;
		};
	};
}