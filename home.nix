{ config, pkgs, ... }:

{
  home.username = "so";
  home.homeDirectory = "/home/so";
  programs.git.enable = true;
  home.stateVersion = "25.11";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos, btw";
    };
  };
}
