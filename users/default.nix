{ config, pkgs, ... }:

{
    users.users.ellie = import ./ellie.nix
}