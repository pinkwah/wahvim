{
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";

  inputs.nixvim = {
    url = "github:nix-community/nixvim";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    { self, ... }@inputs:
    let
      system = "x86_64-linux";

      nixvim = inputs.nixvim.legacyPackages.${system};

      pkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      makeNeovim = module: nixvim.makeNixvimWithModule { inherit pkgs module; };
    in
    {
      formatter.${system} = pkgs.nixfmt-rfc-style;

      packages.${system}.default = makeNeovim {
        imports = [
          # ./modules/dashboard.nix
          ./modules/lsp.nix
          ./modules/tree-sitter.nix
          # ./modules/keymaps.nix
        ];

        colorschemes.catppuccin.enable = true;

        plugins.fugitive.enable = true;
        plugins.noice.enable = true;
        plugins.which-key.enable = true;
        plugins.telescope.enable = true;
      };
    };
}
