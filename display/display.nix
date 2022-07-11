{ config, pkgs, ... }:

{
	imports = [];

	services.xserver = {
		enable = true;
		displayManager = {
			sddm.enable = true;
			defaultSession = "none+i3";
		};

		desktopManager = {
			plasma5.enable = true;
			xterm.enable = false;
		};

		windowManager = {
			i3 = {
				enable = true;
				extraPackages = with pkgs; [
					dmenu #application launcher most people use
					i3status # gives you the default i3 status bar
					i3lock #default i3 screen locker
					i3blocks #if you are planning on using i3blocks over i3status
			     	];

			};
			xmonad = {
    				enable = true;
				      enableContribAndExtras = true;
				      extraPackages = haskellPackages: [
					      haskellPackages.dbus
					      haskellPackages.List
					      haskellPackages.monad-logger
					      haskellPackages.xmonad
				    	];
			};
	
		};
	};

}
