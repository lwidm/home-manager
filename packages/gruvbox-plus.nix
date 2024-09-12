# $XDG_CONFIG_HOME/home-manager/packages/gruvbox-plus.nix

{
  pkgs ? import <nixpkgs> { },
}:

pkgs.stdenv.mkDerivation {

  pname = "gruvbox-plus";
  version = "v5.5.0";

  meta = {
    description = "The gruvbox-plus icon pack for gtk";
    homepage = "https://github.com/SylEleuth/gruvbox-plus-icon-pack";
  };

  src = pkgs.fetchurl {
    url = "https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases/download/v5.5.0/gruvbox-plus-icon-pack-5.5.0.zip";
    hash = "sha256-0R584wmN342Z4gXK5GOao4hR+jwOhSSLndgUx2zOMmE=";
  };

  dontUnpack = true;

  installPhase = ''
    mkdir -p $out
    ${pkgs.unzip}/bin/unzip $src -d $out/
  '';
}
