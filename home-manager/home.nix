{
  config,
  pkgs,
  inputs,
  ...
}: {
  home.username = "max";
  home.homeDirectory = "/home/max";

  home.stateVersion = "25.05"; # DO NOT CHANGE!
  programs.home-manager.enable = true;

  imports = [./modules/firefox.nix];
}
