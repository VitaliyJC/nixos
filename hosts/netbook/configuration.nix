{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ./nixos/modules
  ];

    environment.systemPackages = [ pkgs];

  system.stateVersion = "25.05";
}

