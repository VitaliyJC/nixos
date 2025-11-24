{ config, pkgs, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "vitaliy";
    homeDirectory = "/home/vitaliy";
    stateVersion = 25.05;
  };
}
