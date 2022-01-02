{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  name = "spicetify-1.1.0";

  src = pkgs.fetchurl {
    name = "spicetify-2.8.0-linux-amd64.tar.gz";
    url = https://github.com/khanhas/spicetify-cli/releases/download/v2.8.0/spicetify-2.8.0-linux-amd64.tar.gz;
    sha256 = "sha256:1kqlhyrns92c6y3rm3l8kf99ydiqhnyfarrdyk6lkdy21j37j7qw";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}