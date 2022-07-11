{ config, pkgs, ...}:

{
	imports = [];
	services.xserver.libinput.enable = true;
}
