# $XDG_CONFIG_HOME/home-manager/homeManagerModules/gtk-conf.nix
{
  pkgs,
  lib,
  config,
  ...
}:

let
  gruvboxPlus = import ../../packages/gruvbox-plus.nix { inherit pkgs; };
in
{
  options = {
    gtk-conf.enable = lib.mkEnableOption "enables gtk theming through home manager";
  };

  config = lib.mkIf config.gtk-conf.enable {

    home.packages = with pkgs; [
      gtk4
      # gtk3
      # gtk2
      lxappearance
    ];

    gtk = {
      enable = true;
      theme = {
        name = "adw-gtk3";
        package = pkgs.adw-gtk3;
      };
      iconTheme = {
        name = "GruvboxPlus";
        package = gruvboxPlus;
      };
    };
  };
}
