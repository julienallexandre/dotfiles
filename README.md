# Dotfiles

My personal dotfiles, managed with [chezmoi](https://www.chezmoi.io/) and version-controlled with Git.

This repository contains my configuration files, preferences, and development environment settings.

The goal is to maintain a clean, reproducible, and easy-to-manage setup across **macOS, Linux (Fedora), and Windows**.

## What's included?

### Shell

- [Zsh](https://www.zsh.org/) — Unix shell
- [Oh My Zsh](https://ohmyz.sh/) — Zsh configuration framework
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) — Fish-like autosuggestions
- [Starship](https://starship.rs/) — Cross-shell prompt

### Terminal

- [Ghostty](https://ghostty.org/) — Terminal emulator
  - Font: Maple Mono NF
  - Theme: Catppuccin Macchiato

### Development

- [Laravel](https://laravel.com/) — PHP framework
- [Symfony CLI](https://symfony.com/download) — Symfony development tools

### Security

- [Bitwarden](https://bitwarden.com/) — SSH agent integration on macOS

## Repository structure

```text
.
├── dot_zshrc
├── private_Library/
│   └── private_Application Support/
│       └── com.mitchellh.ghostty/
│           └── config.ghostty
├── LICENSE
└── README.md
```

The repository follows chezmoi's naming conventions. For example, `dot_zshrc` is deployed as `~/.zshrc`.

The `private_` prefix controls local filesystem permissions. It does not make files private on GitHub.

## Installation

### 1. Install chezmoi

**macOS (Homebrew)**

```bash
brew install chezmoi
```

**Fedora Linux**

```bash
sudo dnf install chezmoi
```

**Windows (WinGet)**

```powershell
winget install twpayne.chezmoi
```

### 2. Initialize dotfiles

Clone and apply the managed configuration:

```bash
chezmoi init --apply julienallexandre
```

Alternatively, review changes before applying:

```bash
chezmoi init julienallexandre
chezmoi diff
chezmoi apply
```

> [!IMPORTANT]
> chezmoi manages configuration files, but does not automatically install the applications and shell plugins referenced by them. Install the necessary dependencies before using the configurations.
>
> The current Ghostty configuration uses a macOS-specific location and should not be applied unchanged on other platforms.

## Usage

### Open dotfiles in your editor

```bash
zed "$(chezmoi source-path)"
```

**Preview changes**

```bash
chezmoi diff
```

**Apply changes**

```bash
chezmoi apply
```

**Pull the latest changes and apply them**

```bash
chezmoi update
```

**Add a new configuration file**

```bash
chezmoi add ~/.config/example/config
```

**Update a managed file from its local version**

```bash
chezmoi re-add ~/.zshrc
```

### Publishing changes

The chezmoi source directory is also a Git repository.

```bash
chezmoi cd
git add .
git commit -m "Update dotfiles"
git push
```

## Security

This is a public repository.

No passwords, private SSH keys, API tokens, or other sensitive credentials should be committed.

Machine-specific configurations and secrets should be managed separately when needed.

## License

Distributed under the [MIT License](LICENSE).

Copyright © 2026 Julien Allexandre.
