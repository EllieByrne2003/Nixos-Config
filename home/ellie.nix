{ config, pkgs, ... }:

{
    programs.home-manager.enable = true;

    home.username = "ellie";
	home.homeDirectory = "/home/ellie";

    imports = [
        ./default.nix
    ];

    home.packages = with pkgs; [
        discord
    ];

    wayland.windowManager.hyprland = {
        enable = true;
        systemd.enable = true;
        systemd.variables = ["--all"];

		settings = {
			"$mainMod" = "SUPER";
			"$terminal" = "kitty";
			"$filemanager" = "$terminal superfile";
			"$browser" = "firefox";
			"$menu" = "walker";
			
			input = {
				kb_layout = "ie";
			};

			env = [
			];
			
			exec-once = [
				"waybar"
				"hyprpaper"
                "hypridle"
				"wl-clip-persists"
				"power-profiles-daemon"
				"nm-applet --no-agent"
			];

			monitor = [
				",1920x1080,auto,1.0"
			];

			general = {
				"$mainMod" = "SUPER";
			};

			bind = [
				"$mainMod, Q, exec, $terminal"
				"$mainMod, C, killactive,"
				"$mainMod, M, exit,"
				"$mainMod, E, exec, $filemanager"
				"$mainMod, F, exec, $browser"
				"$mainMod, R, exec, $menu"

				"$mainMod, D, exec, discord"
				"$mainMod, G, exec, steam"

				"$mainMod, left,  movefocus, l"
				"$mainMod, right, movefocus, r"
				"$mainMod, up,    movefocus, u"
				"$mainMod, down,  movefocus, d"

				"$mainMod SHIFT, left,  movewindow, l"
				"$mainMod SHIFT, right, movewindow, r"
				"$mainMod SHIFT, up,    movewindow, u"
				"$mainMod SHIFT, down,  movewindow, d"

				"$mainMod, 1, workspace, 1"
				"$mainMod, 2, workspace, 2"
				"$mainMod, 3, workspace, 3"
				"$mainMod, 4, workspace, 4"
				"$mainMod, 5, workspace, 5"
				"$mainMod, 6, workspace, 6"
				"$mainMod, 7, workspace, 7"
				"$mainMod, 8, workspace, 8"
				"$mainMod, 9, workspace, 9"
				"$mainMod, 0, workspace, 10"

				"$mainMod SHIFT, 1, movetoworkspace, 1"
				"$mainMod SHIFT, 2, movetoworkspace, 2"
				"$mainMod SHIFT, 3, movetoworkspace, 3"
				"$mainMod SHIFT, 4, movetoworkspace, 4"
				"$mainMod SHIFT, 5, movetoworkspace, 5"
				"$mainMod SHIFT, 6, movetoworkspace, 6"
				"$mainMod SHIFT, 7, movetoworkspace, 7"
				"$mainMod SHIFT, 8, movetoworkspace, 8"
				"$mainMod SHIFT, 9, movetoworkspace, 9"
				"$mainMod SHIFT, 0, movetoworkspace, 10"	
			];
		};
    };

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

    # # Set hyprland as default
    # services.xserver.displayManager.defaultSession = "hyprland";


    home.stateVersion = "25.05";
}