{ pkgs, ... }:  {
 users.users.vitaliy = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager"]; # En>
    #  packages = with pkgs; [
    #   nano
    #   wget
    #   git
    #  ];
  };
}
