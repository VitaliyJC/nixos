{ pkgs, ... }: {
  services.xserver = {
    enable = true;

    xkb = {
      layout = "us,ru";
      options = "grp:alt_shift_toggle";
    };

    displayManager.lightdm.enable = true;

    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };
  };

  services.displayManager.defaultSession = "xfce";
}
