{ config, pkgs, ... }:

{
  services.nginx = {
    enable = true;

    # appendHttpConfig = builtins.readFile ./nginx-gateway.conf;
  };
}
