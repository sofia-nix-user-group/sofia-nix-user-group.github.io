{
  description = "SNUG - Sofia NIX User Group website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages = {
          default = pkgs.stdenv.mkDerivation {
            pname = "snug-website";
            version = "0.1.0";
            src = ./.;

            nativeBuildInputs = [ pkgs.hugo ];

            buildPhase = ''
              hugo --minify
            '';

            installPhase = ''
              cp -r public $out
            '';
          };
        };

        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            hugo
            git
            imagemagick
          ];

          shellHook = ''
            echo "SNUG website development environment"
            echo "Run 'hugo server' to start the development server"
          '';
        };
      }
    );
}

