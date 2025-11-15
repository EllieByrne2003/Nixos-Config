{ config, pkgs, ...}:

{
	# home.username = "ellie";
	# home.homeDirectory = "/home/ellie";
	
	# home.packages = with pkgs; [
	# 	# kitty
	# 	# walker   # for wayland apps
	# 	# seahorse # for managing keys in gnome-keyring
	# 	# hyprshot # screenshot program
	# 	# wl-clip-persist
	# 	# gedit
	# 	# superfile
		
	# 	# # applications
	# 	# discord

	# 	# # archives
	# 	# zip
	# 	# xz
	# 	# unzip
	# 	# p7zip
		
	# 	# # utils
	# 	# ripgrep
	# 	# jq
	# 	# yq-go
	# 	# eza
	# 	# fzf
		
	# 	# # networking tools
	# 	# mtr
	# 	# iperf3
	# 	# dnsutils
	# 	# ldns
	# 	# aria2
	# 	# socat
	# 	# nmap
	# 	# ipcalc
		
	# 	# # fun bash stuff
	# 	# cowsay
	# 	# lolcat
	# 	# fortune
	# 	# neofetch # I think hyfetch (in programs) needs this
				
	# 	# # misc
	# 	# file
	# 	# which
	# 	# tree
	# 	# gnused
	# 	# gnutar
	# 	# gawk
	# 	# zstd
	# 	# gnupg
		
	# 	# # monitoring
	# 	# htop   # process and resource monitoring
	# 	# iotop  # io monitoring
	# 	# iftop  # network monitoring
	# 	# strace # system call monitoring
	# 	# ltrace # library call monitoring
	# 	# lsof   # list open files
		
	# 	# # system tools
	# 	# sysstat
	# 	# lm_sensors # for sensors command
	# 	# ethtool
	# 	# pciutils   # lspci
	# 	# usbutils   # lsusb
	# ];
	
	# programs.firefox = {
	# 	enable = true;
	# };

	# programs.git = {
	# 	enable = true;

	# 	extraConfig = {
	# 	 	user = {
	# 	 		name = "EllieByrne2003";
	# 	 		email = "leonbyrne52@gmail.com";
	# 	 	};

				
	# 	 	pull.rebase = false;
	# 	 };
	# };
	
	# programs.bash = {
	# 	enable = true;
	# 	enableCompletion = true;
		
	# 	bashrcExtra = ''
	# 	export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
      
	# 	fortune | cowsay -f stegosaurus | lolcat
	# 	'';
	# };

	# programs.vscode = {
	# 	enable = true;
	# 	package = pkgs.vscodium;

	# 	profiles.default.extensions = with pkgs.vscode-extensions; [
	# 		bbenoist.nix
	# 		gruntfuggly.todo-tree
	# 		llvm-vs-code-extensions.vscode-clangd
	# 		arrterian.nix-env-selector
	# 	];

	# 	profiles.default.userSettings = {
	# 		"update.mode" = "none";

	# 		"editor.rulers" = [
	# 			80
	# 		];

	# 		"clangd.path" = "${pkgs.clang-tools}/bin/clangd";
	# 		"clangd.arguments" = [
	# 			"--background-index"
	# 			"--clang-tidy"
	# 			"--completion-style=detailed"
	# 			"--header-insertion=iwyu"
	# 		];
	# 	};

	# };

	# programs.waybar = {
	# 	enable = true;
	# };

	# services.hyprpaper = {
	# 	enable = true;

	# 	settings = {
	# 		ipc = "on";
	# 		spalsh = false;
	# 		splash_offset = 2.0;

	# 		preload = [
	# 			"/home/ellie/Pictures/Wallpapers/outer-wilds.png"
	# 		];

	# 		wallpaper = [
	# 			"eDP-1, /home/ellie/Pictures/Wallpapers/outer-wilds.png"
	# 		];
	# 	};
	# };

	# wayland.windowManager.hyprland = {
	# 	enable = true;
	# 	systemd.enable = true;
	# 	systemd.variables = ["--all"];

	# 	settings = {
	# 		"$mainMod" = "SUPER";
	# 		"$terminal" = "kitty";
	# 		"$filemanager" = "$terminal superfile";
	# 		"$browser" = "firefox";
	# 		"$menu" = "walker";
			
	# 		input = {
	# 			kb_layout = "ie";
	# 		};

	# 		env = [
	# 		];
			
				
	# 		exec-once = [
	# 			"waybar"
	# 			"hyprpaper"
	# 			"wl-clip-persists"
	# 			"power-profiles-daemon"
	# 			"nm-applet --no-agent"
	# 		];

	# 		monitor = [
	# 			",1920x1080,auto,1.0"
	# 		];

	# 		general = {
	# 			"$mainMod" = "SUPER";
	# 		};

	# 		bind = [
	# 			"$mainMod, Q, exec, $terminal"
	# 			"$mainMod, C, killactive,"
	# 			"$mainMod, M, exit,"
	# 			"$mainMod, E, exec, $filemanager"
	# 			"$mainMod, F, exec, $browser"
	# 			"$mainMod, R, exec, $menu"

	# 			"$mainMod, D, exec, discord"
	# 			"$mainMod, G, exec, steam"

	# 			"$mainMod, left,  movefocus, l"
	# 			"$mainMod, right, movefocus, r"
	# 			"$mainMod, up,    movefocus, u"
	# 			"$mainMod, down,  movefocus, d"

	# 			"$mainMod SHIFT, left,  movewindow, l"
	# 			"$mainMod SHIFT, right, movewindow, r"
	# 			"$mainMod SHIFT, up,    movewindow, u"
	# 			"$mainMod SHIFT, down,  movewindow, d"

	# 			"$mainMod, 1, workspace, 1"
	# 			"$mainMod, 2, workspace, 2"
	# 			"$mainMod, 3, workspace, 3"
	# 			"$mainMod, 4, workspace, 4"
	# 			"$mainMod, 5, workspace, 5"
	# 			"$mainMod, 6, workspace, 6"
	# 			"$mainMod, 7, workspace, 7"
	# 			"$mainMod, 8, workspace, 8"
	# 			"$mainMod, 9, workspace, 9"
	# 			"$mainMod, 0, workspace, 10"

	# 			"$mainMod SHIFT, 1, movetoworkspace, 1"
	# 			"$mainMod SHIFT, 2, movetoworkspace, 2"
	# 			"$mainMod SHIFT, 3, movetoworkspace, 3"
	# 			"$mainMod SHIFT, 4, movetoworkspace, 4"
	# 			"$mainMod SHIFT, 5, movetoworkspace, 5"
	# 			"$mainMod SHIFT, 6, movetoworkspace, 6"
	# 			"$mainMod SHIFT, 7, movetoworkspace, 7"
	# 			"$mainMod SHIFT, 8, movetoworkspace, 8"
	# 			"$mainMod SHIFT, 9, movetoworkspace, 9"
	# 			"$mainMod SHIFT, 0, movetoworkspace, 10"	
	# 		];
	# 	};
	# };
	
	home.stateVersion = "25.05";
}
