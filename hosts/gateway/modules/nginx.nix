{ config, pkgs, ... }:

{
  services.nginx = {
    enable = true;

    appendHttpConfig = builtins.readFile /home/pipka/nginx/nginx-gateway.conf;
  };

  environment.etc = {
  "letsencrypt/live/pipka.site-wild/fullchain.pem".source =
    "/var/lib/acme/pipka.site-wild/fullchain.pem";

  "letsencrypt/live/pipka.site-wild/privkey.pem".source =
    "/var/lib/acme/pipka.site-wild/key.pem";

  "letsencrypt/live/pipka.site-wild/chain.pem".source =
    "/var/lib/acme/pipka.site-wild/fullchain.pem";
};
}
