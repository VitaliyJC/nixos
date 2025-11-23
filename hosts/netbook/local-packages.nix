{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop
    firefox
    telegram-desktop
    pavucontrol

    vim
    wget
    git
    alacritty
    xfce.thunar
    networkmanagerapplet
  ];
}
