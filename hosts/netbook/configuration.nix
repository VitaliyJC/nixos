{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ./nixos/modules
  ];

  system.stateVersion = "25.05";
}

