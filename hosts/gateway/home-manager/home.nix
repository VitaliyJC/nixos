{ config, pkgs, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "pipka";
    homeDirectory = "/home/vitaliy";
    stateVersion = "25.05";
  };
}
