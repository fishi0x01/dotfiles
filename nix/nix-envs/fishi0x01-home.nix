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
  fishi = buildEnv {
    name = "fishi";
    paths = [ 
      act
      ant
      asciinema
      awscli
      bat
      chafa
      cmake
      cmatrix
      cmus
      crunch
      dbeaver
      dia
      diesel-cli
      diskonaut
      docker_compose
      dos2unix
      dosbox
      dotnet-sdk
      fd
      ffmpeg
      figlet
      gdb
      ghidra-bin
      gimp
      git
      gitAndTools.gh
      git-crypt
      git-lfs
      gitAndTools.delta
      glibcLocales
      gnumake
      googler
      go-jira
      gotop
      graphviz
      hexyl
      hey
      htop 
      idea.idea-community
      iftop
      imagemagick
      inkscape
      irssi
      jq
      keepassx2
      kicad
      libreoffice
      #libsForQt5.vlc
      liferea
      lolcat
      lynx
      maven
      mc
      mkvtoolnix
      most
      mplayer
      my_vim.pkg
      nix
      nix-serve 
      nload
      nms
      nox
      openjdk
      p7zip
      packer
      pandoc
      pass
      peco
      potrace
      powershell
      pwgen
      python27Packages.virtualenv
      python3.7
      python38Packages.sqlmap
      rdesktop
      reptyr
      restic
      ripgrep
      sampler
      scrot
      scummvm
      simplescreenrecorder
      skypeforlinux
      slack
      smbclient
      socat
      spotify
      spotify-tui
      ssh-ident
      sshpass
      starship
      telnet 
      texlive.combined.scheme-full
      tmux
      tree 
      unrar
      vagrant
      valgrind
      vscode
      wget
      xclip
      yq
    ]; 
  };
}
