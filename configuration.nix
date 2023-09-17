# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <home-manager/nixos>
    ];

  nix.gc = {
  	automatic = true;
  	dates = "weekly";
  	options = "--delete-older-than 30d";
  };

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  security.rtkit.enable = true;
  services.pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
  };

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  services.xserver = {
    layout = "br";
    xkbVariant = "abnt2";
  };
  console.keyMap = "br-abnt2";

  users.users.victor = {
    isNormalUser = true;
    description = "Victor";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  services.getty.autologinUser = "victor";

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
  ];
  
  security.sudo.wheelNeedsPassword = false;

  programs.hyprland.enable = true;

  fonts.fonts = with pkgs; [
	  noto-fonts
	  noto-fonts-cjk
	  noto-fonts-emoji
	  liberation_ttf
	  symbola
	  font-awesome
	  nerdfonts
  ];
  programs.zsh.enable = true;
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;

  # Home Manager
  home-manager.users.victor = { pkgs, ...}: {
	nixpkgs.config.allowUnfree = true;

	home.homeDirectory = "/home/victor";
	home.stateVersion = "23.05";
	home.packages = [
		pkgs.kitty
		pkgs.waybar
		pkgs.wofi
		pkgs.swaybg
		pkgs.brightnessctl
		pkgs.brave
		pkgs.google-chrome
		pkgs.discord-ptb
		pkgs.btop
		pkgs.git
		pkgs.unzip
		pkgs.bat
		pkgs.exa
		pkgs.azure-cli
		pkgs.terraform
		pkgs.ansible
		pkgs.terraspace
		pkgs.asdf-vm
		pkgs.gcc
	];
	programs.zsh = {
		enable = true;
		shellAliases = {
			cat = "bat";
			ls = "exa -a --icons";
		};
		oh-my-zsh = {
			enable = true;
			plugins = [
				"git"
				"sudo"
				"docker"
				"kubectl"
			];
		};
		plugins = [
			{
			  name = "zsh-syntax-highlighting";
			  file = "zsh-syntax-highlighting.zsh";
			  src = builtins.fetchGit {
			    url = "https://github.com/zsh-users/zsh-syntax-highlighting/";
			    rev = "932e29a0c75411cb618f02995b66c0a4a25699bc";
			  };
		        }
		];
		enableAutosuggestions = true;
		enableCompletion = true;
	};

	programs.starship = {
		enable = true;
		settings = {
			add_newline = false;
		};
	};
	programs.neovim = {
		enable = true;
		viAlias = true;
		vimAlias = true;
		plugins = [
			 pkgs.vimPlugins.nvim-treesitter.withAllGrammars
			 pkgs.vimPlugins.nvim-lspconfig
			 pkgs.vimPlugins.mason-nvim
			 pkgs.vimPlugins.mason-lspconfig-nvim
		];
		extraPackages = [
			pkgs.nodejs
			pkgs.ruff
			pkgs.pyright
			pkgs.nodePackages.typescript
			pkgs.nodePackages.typescript-language-server
		];
	};
  };

  system.stateVersion = "23.05";
}
