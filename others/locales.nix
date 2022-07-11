{config, pkgs, ...}:

{
	imports = [];
	time.timeZone = "Europe/Warsaw";
	# Configure keymap in X11
  	services.xserver = {
    		layout = "pl";
    		xkbVariant = "";
  	};

  	# Configure console keymap
  	console.keyMap = "pl2";
	i18n.supportedLocales = [
  		"en_US.UTF-8/UTF-8"
  	];
	i18n.extraLocaleSettings = {
	    LC_ADDRESS = "pl_PL.utf8";
	    LC_IDENTIFICATION = "pl_PL.utf8";
	    LC_MEASUREMENT = "pl_PL.utf8";                                                                                  
	    LC_MONETARY = "pl_PL.utf8";
	    LC_NAME = "pl_PL.utf8";
	    LC_NUMERIC = "pl_PL.utf8";
	    LC_PAPER = "pl_PL.utf8";
	    LC_TELEPHONE = "pl_PL.utf8";
	    LC_TIME = "pl_PL.utf8";
  	};


}
