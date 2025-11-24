{ config, pkgs, ... }:

let
  # Тянем Home Manager под релиз 25.05
  home-manager = builtins.fetchTarball
    "https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz";
in
{
  # Подключаем модуль HM как часть NixOS
  imports = [
    (import "${home-manager}/nixos")
  ];

  # Чтобы старые файлы не терялись при перезаписи
  home-manager.backupFileExtension = "backup";

  # Подключаем ТВОЙ уже существующий home-конфиг
  home-manager.users.vitaliy = import /home/vitaliy/.config/home-manager/home.nix;
  # путь подставь тот, где реально лежит твой конфиг
}
