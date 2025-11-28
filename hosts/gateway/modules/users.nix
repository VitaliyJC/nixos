{ pkgs, ... }:  {
 users.users.pipka = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager"]; # En>
    #  packages = with pkgs; [
    #   nano
    #   wget
    #   git
    #  ];
  };
}
