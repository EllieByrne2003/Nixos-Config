{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        fortune
        cowsay
        lolcat
    ];

    programs.bash = {
        enable = true;
        enableCompletion = true;

        historyControl = [
            "erasedups"
        ];
		
		bashrcExtra = ''
		export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
      
		fortune | cowsay -f stegosaurus | lolcat
		'';
    };
}