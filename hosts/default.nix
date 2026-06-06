{ config, pkgs, ... }:

{
    imports = [
        ../users/default.nix

        ../modules/desktop.nix
    ];

    # Nix settings for all hosts
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
	nix.gc.automatic       = true;
	nix.optimise.automatic = true;

	# Bootloader
	boot.loader.systemd-boot.enable      = true;
	boot.loader.efi.canTouchEfiVariables = true;

	# Networking
	networking.hostname = "nixos"; # Can be overriden
	networking.networkmanager.enable = true;

	# Localisation stuff
    console.keyMap = "ie";
    time.timeZone = "Europe/Dublin";
    i18n.defaultLocale = "en_IE.UTF-8";
    i18n.extraLocaleSettings = {
        LC_ADDRESS = "en_IE.UTF-8";
        LC_IDENTIFICATION = "en_IE.UTF-8";
        LC_MEASUREMENT = "en_IE.UTF-8";
        LC_MONETARY = "en_IE.UTF-8";
        LC_NAME = "en_IE.UTF-8";
        LC_NUMERIC = "en_IE.UTF-8";
        LC_PAPER = "en_IE.UTF-8";
        LC_TELEPHONE = "en_IE.UTF-8";
        LC_TIME = "en_IE.UTF-8";
    };


    # Packages needed on any host
    environment.systemPackages = with pkgs; [
		# Downloading stuff
        wget
        git

		# archives
		zip
		xz
		unzip
		p7zip
		
		# utils
		ripgrep
		jq
		yq-go
		eza
		fzf
		
		# networking tools
		mtr
		iperf3
		dnsutils
		ldns
		aria2
		socat
		nmap
		ipcalc

        # misc
		file
		which
		tree
		gnused
		gnutar
		gawk
		zstd
		gnupg
        neofetch # used for hyfetch, I think
		
		# monitoring
		htop   # process and resource monitoring
		iotop  # io monitoring
		iftop  # network monitoring
		strace # system call monitoring
		ltrace # library call monitoring
		lsof   # list open files
		
		# system tools
		sysstat
		lm_sensors # for sensors command
		ethtool
		pciutils   # lspci
		usbutils   # lsusb
    ];

	# programs.java = {
	# 	enable = true;
	# 	package = pkgs.jdk;
	# };

    # TODO Could be moved elsewhere, only for some steam games, ellie specific?
    nixpkgs.config.allowUnfree = true;

    system.stateVersion = "25.05";
}
