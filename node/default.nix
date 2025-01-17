{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
{
  nativeBuildInputs = with pkgs; [
    nodejs
  ];

  shellHook = ''
    echo "weclome"
    source ./something.sh
    echo "to my shell!" | ${pkgs.lolcat}/bin/lolcat 
  '';

  COLOR = "blue";

  PASSWORD = import ./password.nix;
}
