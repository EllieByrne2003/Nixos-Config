{ config, pkgs, ... }:

{
    imports = [
        ../users/default.nix

        ../modules/hyprland.nix
    ];

    # Needed for all hosts
    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];

    # Packages needed on any host
    environment.systemPackages = with pkgs; [
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

    # TODO Could be moved elsewhere, only for some steam games, ellie specific?
    nixpkgs.config.allowUnfree = true;

    system.stateVersion = "25.05";
}