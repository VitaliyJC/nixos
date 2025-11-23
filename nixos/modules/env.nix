{
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit co>
    wget
    git
    firefox
    alacritty
    xfce.thunar
    networkmanagerapplet
  ];
}
