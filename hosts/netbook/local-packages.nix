{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop
    firefox
    telegram-desktop
    pavucontrol

    # Cli
    pulseaudio
    vim
    wget
    git
    alacritty
    xfce.thunar
    networkmanagerapplet
  ];
}
