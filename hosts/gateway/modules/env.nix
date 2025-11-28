{
  environment.localBinInPath = true;

  environment.sessionVariables = {
    EDITOR = "nano";

    LANG = "en_US.UTF-8";
    LC_ALL = "en_US.UTF-8";

    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_DATA_HOME = "$HOME/.local/share";

    GDK_BACKEND = "x11";
    QT_QPA_PLATFORM = "xcb";

    COLORTERM = "truecolor";
  };
}
