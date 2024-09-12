# $XDG_CONFIG_HOME/home-manager/homeManagerModules/qt-conf.nix
{
  pkgs,
  lib,
  config,
  ...
}:

{
  options = {
    qt-conf.enable = lib.mkEnableOption "enables qt theming through home manager";
  };

  config = lib.mkIf config.qt-conf.enable {

    home.packages = [ pkgs.qt5ct ];
    qt.enable = true;

    #   gtk = {
    #     enable = true;
    #     theme = {
    #       name = "adw-gtk3";
    #       package = pkgs.adw-gtk3;
    #     };
    #     iconTheme = {
    #       name = "GruvboxPlus";
    #       package = gruvboxPlus;
    #     };
    #   };
  };
}
