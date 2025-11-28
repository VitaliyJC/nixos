{ pkgs, ... }:  {
 users.users.pipka = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker"]; # En>
    #  packages = with pkgs; [
    #   nano
    #   wget
    #   git
    #  ];
  };
}
