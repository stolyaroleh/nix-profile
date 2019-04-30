let
  sources = import ./nix/sources.nix;
  stable = import sources.stable {};
  niv = (import sources.niv {}).niv;
  python3 = stable.python3.withPackages (
    pkgs: with pkgs; [
      requests
    ]
  );
in
  [
    niv
    python3
  ] ++
  (
    with stable; [
      curl
    ]
  )
