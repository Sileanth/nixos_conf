# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware/hardware-configuration.nix
      ./hardware/hardware-own.nix
      ./hardware/network.nix
      ./display/display.nix
      ./users/users.nix
      ./others/locales.nix
      ./hardware/audio.nix
      ./hardware/laptop.nix
      ./hardware/print.nix
    ];
	#only essential settings, configure things by including modules
  	networking.hostName = "inspiron"; # Define your hostname.
	nix.package = pkgs.nixUnstable;
	nix.extraOptions = ''
  		experimental-features = nix-command flakes
	'';

  	# Allow unfree packages
 	nixpkgs.config.allowUnfree = true;

  	environment.systemPackages = with pkgs; [
		vim
		wget
		git
	];


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}
