{ config, pkgs, ... }: {
  imports = [ ./hardware-configuration.nix ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.supportedFilesystems = [ "btrfs" ];
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  console.keyMap = "fr";
  users.users.so = { isNormalUser = true; extraGroups = [ "wheel" ]; };
  environment.systemPackages = with pkgs; [ vim git wget tree ];
  programs.firefox.enable = true;
  fonts.packages = with pkgs; [ nerdfonts-jetbrains-mono ];
  system.stateVersion = "25.11";
}
