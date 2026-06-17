{ config, pkgs, ... }: 
{
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      useOSProber = true;
    };
    efi.canTouchEfiVariables = true;
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;

  fileSystems."/mnt/games" = {
    device = "/dev/nvme0n1p4";
    fsType = "ext4";
    options = [ "defaults " ];
  };
}
