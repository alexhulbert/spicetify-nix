{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  name = "spicetify-2.8.3";

  src = pkgs.fetchurl {
    name = "spicetify-2.8.3-linux-amd64.tar.gz";
    url = https://github.com/khanhas/spicetify-cli/releases/download/v2.8.3/spicetify-2.8.3-linux-amd64.tar.gz;
    sha256 = "sha256:1zkzajvm0bcsnanmkdab5ma7i7iq3v4qwxghykplxcb9p8dzaayp";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}