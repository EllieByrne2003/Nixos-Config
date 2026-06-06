{ config, pkgs, inputs, ... }:

{
    imports = [
        ../default.nix               # Common to all hosts
        ./hardware-configuration.nix # Demeter specific hardware
    ];

    # Hostname
    networking.hostName = "demeter";

    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # Enable hyprland (for all users) # TODO maybe for all hosts?
    programs.hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    };

    xdg.portal = {
        enable = true;
        extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
    };


    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        pulse.enable = true;
    };


    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "ie";
        variant = "";
    };

    hardware.graphics = {
        enable = true;
        enable32Bit = true;
    };

    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true;
        dedicatedServer.openFirewall = true;
    };

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        # steam needs to be here to set hardware stuff
        steam 
        steam-run

        # android-studio
    ];

    # TODO could be moved in waybar or something, it is needed for just that I think
    fonts = {
    	enableDefaultFonts = true;
    
    	packages = with pkgs; [
      	font-awesome
        	
        jetbrains-mono
     	];
       
			fontconfig = {
				enable = true;
				defaultFonts = {
					monospace = [
						"JetBrains Mono"	
					];		
     		};
      }; 
    };
    
    environment.variables = {
    	TERMINAL_FONT = "JetBrains Mono";
    };
}
