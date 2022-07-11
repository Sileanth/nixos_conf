{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "sileanth";
  home.homeDirectory = "/home/sileanth";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";
  home.packages = [ 
  	pkgs.jetbrains.pycharm-professional 
	pkgs.spotify 
	pkgs.discord
	pkgs.gitkraken
 ];
  # Let Home Manager install and manage itself.
   programs = {
   	gh = {
		enable = true;
		enableGitCredentialHelper = true;
		settings = {
			git_protocol = "ssh";
			aliases = {

			};
			editor = "nvim";
		};
	};
	git = {
    		enable = true;
    		extraConfig = {
      			#credential.helper = "${
          		#	pkgs.git.override { withLibsecret = true; }
        		#}/bin/git-credential-libsecret";
    		};
		aliases = {
			co = "checkout";
			com = "commit -m";
			all = "add --all";
		};
		userEmail = "lukasz.magnuszewski@gmail.com";
		userName = "Łukasz Magnuszewski";
  	};
	alacritty = {
		enable = true;
	};
	kitty = {
		enable = true;
		settings = {
		};
		theme = "Galaxy";
	};
	vscode = {
		enable = true;
		extensions = [];
	};
	zsh = {
		enable = true;
		enableAutosuggestions = true;
		enableSyntaxHighlighting = true;
		autocd = true;
		shellAliases = {
			".." = "cd ..";
			nix-build = "sudo nixos-rebuild switch --flake ~/nix_conf#inspiron";
			nix-conf = "cd ~/nix_conf";
		};
	};
   };
}
