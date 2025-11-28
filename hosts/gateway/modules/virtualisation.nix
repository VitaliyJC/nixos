{
    virtualisation.docker = {
        enable = true;
        enableOnBoot = true;
        storageDriver = "btrfs";

        # Рекомендуемые параметры для продакшн/серверов
       # extraOptions = "--log-driver=json-file --log-opt max-size=50m --log-opt max-file=3";
    };
}