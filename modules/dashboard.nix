{ lib, ... }:

{
  plugins.dashboard = {
    enable = true;

    header = [ "Foobar" ];
  };
}
