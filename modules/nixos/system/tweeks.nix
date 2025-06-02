{
  # Disable Tpm
  systemd.tpm2.enable = false;

  # Lock On Lid Close
  services.logind.lidSwitch = "lock";

  # Time Zone
  time.timeZone = "Europe/Moscow";
}
