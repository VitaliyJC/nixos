{
  programs.bash = {
    enable = true;
    shellAliases = {
        rebuild = "sudo nixos-rebuild switch";
        hmrebuild = "home-manager switch";
    };
  };
}
