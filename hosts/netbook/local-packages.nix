{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop
    firefox
    telegram-desktop
    pavucontrol
    picom # тени, сглаживания, прозрачность
    dunst # уведомления

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
