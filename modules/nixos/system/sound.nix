{
  # Sound
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Уже хз зачем, но зачем-то надо
  security.rtkit.enable = true;
}
