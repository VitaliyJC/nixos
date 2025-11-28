{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ./modules
  ];

  networking.hostName = "gateway";

  system.stateVersion = "25.05";
}

