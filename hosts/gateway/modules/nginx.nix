{ config, pkgs, ... }:

{
  services.nginx = {
    enable = true;

    appendHttpConfig = builtins.readFile /home/pipka/nginx/nginx-gateway.conf;
  };
}
