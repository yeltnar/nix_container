{ pkgs ? import <nixpkgs> { }
, pkgsLinux ? import <nixpkgs> { system = "x86_64-linux"; }
}:

pkgs.dockerTools.buildImage {
  name = "test1234";
  # tag = "latest";
  config = {
    # Cmd = [ "${pkgs.curl}/bin/curl" "--version" ];
    # Cmd = [ "${pkgs.coreutils}/bin/tail" "-f" "/dev/null" ];
    # Cmd = [ "${pkgs.coreutils}/bin/env" ];
    Cmd = [ "${pkgs.coreutils}/bin/ls" "${pkgs.coreutils}/bin" ];
    # Cmd = [ "env" ];
  };
}

