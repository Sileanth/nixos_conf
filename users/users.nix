{config, pkgs, ...}:

{
	imports = [];

	services.xserver.displayManager.autoLogin.enable = true;
  	services.xserver.displayManager.autoLogin.user = "sileanth";
	users.users.sileanth = {
    		isNormalUser = true;
    		description = "sileanth";
    		extraGroups = [ "networkmanager" "wheel" ];
    		packages = with pkgs; [
        		git
        		neovim      
        		firefox
    		];
 	};

}
