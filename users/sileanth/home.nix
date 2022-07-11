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
  # Let Home Manager install and manage itself.
   home.shellAliases = {
   	nixconf = "cd ~/nix_conf";
	apply_config = "sudo nixos-rebuild swith --flake ~/nixos_conf#inspiron";
   };
   programs = {
   	git = {
    		enable = true;
    		extraConfig = {
      			credential.helper = "${
          			pkgs.git.override { withLibsecret = true; }
        		}/bin/git-credential-libsecret";
    		};
  	};
	alacritty = {
		enable = true;
	};

   };
}
