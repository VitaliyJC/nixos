{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    firefox
    alacritty
    xfce.thunar
    networkmanagerapplet
  ];
}
