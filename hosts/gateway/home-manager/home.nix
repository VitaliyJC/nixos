{ config, pkgs, ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "pipka";
    homeDirectory = "/home/pipka";
    stateVersion = "25.05";
  };
}
