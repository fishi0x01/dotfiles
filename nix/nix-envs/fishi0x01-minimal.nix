with import <nixpkgs> {};
let
  /*** vim ***/
  my_vim = import ./vim/default.nix { 
    pkgs = pkgs; 
    ### python3 support
    vim_configurable = vim_configurable.override { python = pkgs.python3; };
  };
in
with pkgs; rec{
  fishi-mvp = buildEnv {
    name = "fishi-mvp";
    paths = [
      ack
      bat    
      fd     
      git 
      gitAndTools.delta
      gnumake
      gotop
      hexyl
      htop 
      iftop
      jq
      mc
      my_vim.pkg
      nix
      nix-serve
      nload
      pass
      pwgen
      ripgrep
      telnet 
      tmux
      tree 
      wget
      yq
    ]; 
  };
}
