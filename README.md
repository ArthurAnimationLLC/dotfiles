# ArthurAnimationLLC Dotfiles

Neovim setup for HTML, CSS, and JavaScript development on macOS. Includes LSP support, syntax highlighting, and web dev plugins.

---

## Prerequisites

Install [Homebrew](https://brew.sh) if you don't have it:

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

## 1. Install iTerm2

```zsh
brew install --cask iterm2
```

Open iTerm2 and configure it:

- **Font**: iTerm2 → Settings → Profiles → Text → Font → JetBrainsMono Nerd Font, size 14
- **Background color**: iTerm2 → Settings → Profiles → Colors → Background → `282828`

Install the Nerd Font:

```zsh
brew install --cask font-jetbrains-mono-nerd-font
```

---

## 2. Install Neovim

```zsh
brew install neovim
```

Add this alias to your `~/.zshrc` so `vim` always opens Neovim:

```zsh
echo "alias vim='nvim'" >> ~/.zshrc
source ~/.zshrc
```

---

## 3. Install LazyVim

Back up any existing Neovim config, then clone the LazyVim starter:

```zsh
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
```

Clone this repo directly as your Neovim config:

```zsh
git clone https://github.com/ArthurAnimationLLC/dotfiles ~/.config/nvim
```

Open Neovim — LazyVim will detect the config and install all plugins automatically:

```zsh
nvim
```

Wait for the plugin installation to complete, then quit and reopen:

```
:qa
```

```zsh
nvim
```

---

## 4. Install language servers

Open Neovim and launch Mason:

```
:Mason
```

Press `/` to search, `i` to install. Install the following:

| Server | Purpose |
|---|---|
| `html-lsp` | HTML autocomplete and validation |
| `css-lsp` | CSS property completion |
| `typescript-language-server` | JavaScript and TypeScript |
| `eslint-lsp` | Inline JavaScript linting |

Press `q` to close Mason when done.

---

## Plugins included

| Plugin | What it does |
|---|---|
| `gruvbox.nvim` | Warm dark colorscheme |
| `nvim-ts-autotag` | Auto-close and rename HTML tags |
| `nvim-colorizer.lua` | Inline color swatches for CSS values |
| `emmet-vim` | Expand HTML abbreviations |

---

## File structure

```
~/.config/nvim/
├── init.lua
└── lua/
    ├── config/
    │   ├── options.lua       — editor options
    │   ├── keymaps.lua       — custom keymaps
    │   └── autocmds.lua      — autocommands
    └── plugins/
        ├── colorscheme.lua   — gruvbox + LazyVim colorscheme config
        └── webdev.lua        — HTML/CSS/JS plugins
```

---

## Key options set in options.lua

- `termguicolors = true` — 24-bit true color (required for gruvbox)
- `tabstop = 2`, `shiftwidth = 2` — 2-space indentation
- `relativenumber = true` — relative line numbers
- `clipboard = unnamedplus` — system clipboard integration
- `undofile = true` — persistent undo across sessions
- `shell = /bin/zsh` — zsh for all terminal commands

---

## Updating

To pull the latest config on any machine:

```zsh
cd ~/.config/nvim
git pull
```

Then sync plugins inside Neovim:

```
:Lazy sync
```
