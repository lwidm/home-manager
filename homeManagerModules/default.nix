# $XDG_CONFIG_HOME/home-manager/homeManagerModules/default.nix

{ pkgs, lib, ... }:
{

  imports = [
    ./theming/gtk-conf.nix
    ./theming/qt-conf.nix
  ];

  gtk-conf.enable = lib.mkDefault false;
  qt-conf.enable = lib.mkDefault false;
}
