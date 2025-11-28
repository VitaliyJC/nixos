{
  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = true;

  # Получение сертификатов доменного имени
  security.acme = {
    acceptTerms = true;
    defaults = {
      email = "pipon@pipa.com";
      group = "nginx";  # важная строчка!
    };

    certs."pipka.site-wild" = {
      domain = "*.pipka.site";
      extraDomainNames = [
      "pipka.site"

      # подзоны
      "*.severnaya.pipka.site"
      "*.osenyaya.pipka.site"
      "*.omskaya.pipka.site"
      "*.dacha.pipka.site"
      "*.garage.pipka.site"
    ];
      dnsProvider = "godaddy";
      credentialsFile = "/root/godaddy-acme.env";
      dnsPropagationCheck = true;
    };
  };
}
