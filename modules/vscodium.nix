{ config, pkgs, ... }:

{
    programs.vscode = {
	    enable = true;
		package = pkgs.vscodium;

		profiles.default.extensions = with pkgs.vscode-extensions; [
			bbenoist.nix
			gruntfuggly.todo-tree
			llvm-vs-code-extensions.vscode-clangd
			arrterian.nix-env-selector
		];

		profiles.default.userSettings = {
			"update.mode" = "none";

			"editor.rulers" = [
				80
			];

			"clangd.path" = "${pkgs.clang-tools}/bin/clangd";
			"clangd.arguments" = [
				"--background-index"
				"--clang-tidy"
				"--completion-style=detailed"
				"--header-insertion=iwyu"
			];
		};

	};
}