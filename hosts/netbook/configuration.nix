{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ./modules
    ./pkgs-modules
  ];

  networking.hostName = "netbook";

  system.stateVersion = "25.05";
}

