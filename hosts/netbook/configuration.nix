{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ./modules
  ];

  system.stateVersion = "25.05";
}

