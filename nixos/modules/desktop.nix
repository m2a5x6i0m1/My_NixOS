{pkgs, ...}: {
  # Wayland compositor of my choice
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # Ly login manager
  services.displayManager.ly.enable = true;

  # UWSM
  # programs.uwsm.enable = true;
  # programs.hyprland.withUWSM = true;
  # programs.uwsm.waylandCompositors = {};

  # Status bar
  programs.waybar.enable = true;
}
