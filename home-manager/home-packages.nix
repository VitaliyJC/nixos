{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop
    imv          # лёгкий просмотрщик изображений
    mpv          # видеоплеер
    pavucontrol  # GUI-микшер звука

    # CLI / utils
    brightnessctl  # яркость экрана
    ffmpeg         # работа с аудио/видео
    fzf            # fuzzy поиск
    htop           # мониторинг процессов
    mediainfo      # инфа о медиафайлах
    playerctl      # управление плеерами
    ripgrep        # быстрый поиск по файлам
    unzip          # распаковка zip
    wget           # качалка
    zip            # упаковка zip

    # Клипборд под X11
    xclip          # нужен cliphist под Xorg
    cliphist       # история буфера обмена

    # Эмуляция ввода под X11 (аналог wtype для Wayland)
    xdotool

    # Coding
    nodejs

    # Уведомления
    libnotify

    # Nix tools
    nix-prefetch-scripts
  ];
}
