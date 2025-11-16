{ config, pkgs, ... }:

{
    isNormalUser = true;
    description = "Ellie Byrne";
    extraGroups = [
        "networkmanager"
        "wheel"
    ];

    # Stuff unique to ellie    
    packages = with pkgs; [
    ];

    home = "/home/ellie";
    shell = pkgs.bash;

    # This is Ellie's git
	programs.git = {
		enable = true;

		extraConfig = {
		 	user = {
		 		name = "EllieByrne2003";
		 		email = "leonbyrne52@gmail.com";
		 	};

		 	pull.rebase = false;
		};
	};
}