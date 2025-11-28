{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Cli
    home-manager
    vim
    wget
    git
    networkmanagerapplet
  ];
}
