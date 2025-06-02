{
  inputs = {
    # Main packages source
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home-manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Latest disko
    # inputs.disko.url = "github:nix-community/disko/latest";
    # inputs.disko.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    nixpkgs,
    self,
    ...
  }: {
    nixosConfigurations = {
      # Old Asus laptop
      laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs self;};
        modules = [
          ./hosts/laptop/configuration.nix
        ];
      };
    };
  };
}
