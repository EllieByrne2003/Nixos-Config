{ config, pkgs, ... }:

{
    # home.systemPackages = with pkgs; [
    #     hyfetch
    # ];

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