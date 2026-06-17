{ pkgs, ... }:
{
  users.users."null" = {
    isNormalUser = true;
    description = "null";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
    ];
  };
}
