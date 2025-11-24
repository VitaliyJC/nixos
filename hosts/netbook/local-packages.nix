{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop
    firefox
    telegram-desktop
    pavucontrol
    picom # тени, сглаживания, прозрачность
    dunst # уведомления

    # Cli
    home-manager
    pulseaudio
    vim
    wget
    git
    alacritty
    xfce.thunar
    networkmanagerapplet
  ];
}
