# An easy way to manage local packages with Nix

Like `pip install --user`, but on steroids.

`packages.nix` defines a list of packages.

```bash
# Add everything in `packages.nix` to user profile
nix-env --install --file "packages.nix"
# Replace user profile with `packages.nix`
nix-env --install --file "packages.nix" --remove-all

# Rollback to previous version of user profile
nix-env --rollback
```

`nix/sources.json` references repositories with Nix expressions.
`nix/sources.nix` defines a mapping from source to its path for every source in `sources.json`.
`niv` is a tool that maintains `nix/sources.json`.

```bash
# Add/update/remove sources
niv add "NixOS/nixpkgs" --name "unstable" --branch "master"
niv update "unstable"
niv drop "stable" # yolo
```
