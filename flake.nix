{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs = { nixpkgs, ... }: {
    nixosConfigurations.parallels = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";

      modules = [
        ./modules/base
        ./hosts/parallels
      ];
    };
  };
}
