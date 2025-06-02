{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Wayland
    swaynotificationcenter
    wl-clipboard
    cliphist
    wev
    wofi

    # Hyprland
    hyprsunset
    hyprshot

    # Desktop apps
    telegram-desktop
    ghostty
    obsidian
    pwvucontrol
    neovide
    # gthumb
    # syncthing
    # spotify
    # libreoffice

    # Tui
    starship
    yazi
    fastfetch
    lazygit
    htop
    nushell

    # Cli tools
    home-manager
    uutils-coreutils-noprefix
    ripgrep
    fd
    eza
    bat
    zoxide
    delta
    # xh
    # dust
    # ripgrep-all

    git
    stow
    curl
    busybox
    brightnessctl
    imagemagick
    fzf

    # Lsp
    lua-language-server
    bash-language-server
    clang-tools
    rust-analyzer
    harper
    nixd

    # Debuggers
    lldb

    # Formatters
    stylua
    nixfmt-classic
    alejandra
    prettierd

    # Compilers
    clang
    rustup
  ];

  fonts.packages = with pkgs; [ nerd-fonts.code-new-roman ];
}
