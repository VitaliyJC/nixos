{
  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = true;

  # Получение сертификатов доменного имени
  security.acme = {
  acceptTerms = true;
  email = "pipon@pipa.com";

  certs."pipka.site-wild" = {
    domain = "*.pipka.site";
    extraDomainNames = [ "pipka.site" ];
    dnsProvider = "godaddy";
    credentialsFile = "/root/godaddy-acme.env";
    dnsPropagationCheck = true;
  };
};
}
