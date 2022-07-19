{ config, pkgs, ... }:

{
	programs.git = {
                enable = true;
                extraConfig = {
                };
                aliases = {
                        co = "checkout";
                        com = "commit -m";
                        all = "add --all";
                };
                userEmail = "lukasz.magnuszewski@gmail.com";
                userName = "Łukasz Magnuszewski";
        };
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

}
