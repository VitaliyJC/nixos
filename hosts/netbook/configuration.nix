{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ./modules
  ];

  networking.hostName = "netbook";

  system.stateVersion = "25.05";
}

