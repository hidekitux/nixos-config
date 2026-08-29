{ ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking = {
    hostName = "nixos-parallels";
    networkmanager.enable = true;
  };

  services.openssh.enable = true;

  system.stateVersion = "26.05";
}
