{ inputs, pkgs, ... }:
{
  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    librewolf
    fastfetch
    obsidian
    kitty
    vesktop
    btop
    spotify
    git
    gcc
    wget
    fzf
    obs-studio
    steam
    prismlauncher
    swayimg
    mpv
    ani-cli
    pfetch
    mangohud
    brightnessctl
    localsend

    hyprland
    wofi
    awww
    quickshell
    dunst
    libnotify
    hyprpicker
    hyprlock
    flameshot
  ];

  programs.nix-ld.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kate
    gwenview
    okular
    elisa
    khelpcenter
    ark
    konsole
  ];
}
