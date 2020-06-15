with import <nixpkgs> {};
let
  /*** vim ***/
  my_vim = import ./vim/default.nix { 
    pkgs = pkgs; 
    vim_configurable = vim_configurable;
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
      cadaver
      chafa
      cmake
      cmatrix
      cmus
      crunch
      dbeaver
      dia
      docker_compose
      dos2unix
      dosbox
      dotnet-sdk
      enum4linux
      fd
      ffmpeg
      figlet
      gdb
      ghidra-bin
      gimp
      git
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
      irssi
      john
      jq
      keepassx2
      libreoffice
      libsForQt5.vlc
      liferea
      lolcat
      lynx
      maven
      mc
      metasploit
      mkvtoolnix
      most
      mplayer
      my_vim.pkg
      nix
      nix-serve 
      nload
      nmap
      nms
      nox
      openjdk
      p7zip
      packer
      pandoc
      pass
      potrace
      powershell
      proxychains
      pwgen
      python27Packages.virtualenv
      python3.7
      python38Packages.sqlmap
      rdesktop
      reptyr
      restic
      ripgrep
      rlwrap
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
      telnet 
      thc-hydra
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
