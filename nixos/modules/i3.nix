{
  services.xserver = {
    enable = true;

    xkb = {
      layout = "us,ru";
      options = "grp:alt_shift_toggle";
    };

    displayManager.lightdm.enable = true;
    desktopManager.xterm.enable = false;

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        i3status
        i3lock
      ];
    };
  };

  services.displayManager.defaultSession = "none+i3>
}
