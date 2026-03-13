-- ============================================================
--  ~/.config/nvim/lua/config/options.lua
--  Neovim options — HTML / CSS / JavaScript
-- ============================================================

local opt = vim.opt

-- ── COLORS & DISPLAY ────────────────────────────────────────

opt.termguicolors = true -- 24-bit hex color (bypasses terminal ANSI palette)
opt.background = "dark" -- Tell colorschemes to use dark variant
opt.syntax = "on" -- Syntax highlighting (Treesitter also handles this)
opt.cursorline = true -- Highlight the current line
opt.colorcolumn = "100" -- Soft line-length guide
opt.scrolloff = 8 -- Keep 8 lines visible above/below cursor
opt.sidescrolloff = 8 -- Keep 8 columns visible left/right
opt.signcolumn = "yes" -- Always show sign column (avoids layout shift)
opt.showmode = false -- LazyVim's statusline already shows the mode
opt.cmdheight = 1 -- Command bar height

-- Set your colorscheme here after installing it via Lazy

-- ── LINE NUMBERS ────────────────────────────────────────────

opt.number = true -- Show absolute line number on current line
opt.relativenumber = true -- Relative numbers on all other lines

-- ── INDENTATION ─────────────────────────────────────────────

opt.tabstop = 2 -- Tab = 2 spaces (HTML/CSS/JS standard)
opt.shiftwidth = 2 -- Indent = 2 spaces
opt.expandtab = true -- Use spaces, not tab characters
opt.smartindent = true -- Context-aware auto-indent
opt.autoindent = true -- Copy indent from previous line
opt.shiftround = true -- Round indent to nearest shiftwidth

-- ── SEARCH ──────────────────────────────────────────────────

opt.incsearch = true -- Search as you type
opt.hlsearch = true -- Highlight all matches
opt.ignorecase = true -- Case-insensitive by default
opt.smartcase = true -- Case-sensitive if you type a capital

-- ── SPLITS ──────────────────────────────────────────────────

opt.splitright = true -- Vertical splits open to the right
opt.splitbelow = true -- Horizontal splits open below

-- ── FILES & ENCODING ────────────────────────────────────────

opt.encoding = "utf-8" -- Internal encoding
opt.fileencoding = "utf-8" -- File encoding written to disk
opt.autoread = true -- Reload file if changed outside Neovim

-- ── BACKUP / SWAP / UNDO ────────────────────────────────────

opt.swapfile = false -- No .swp files cluttering your project
opt.backup = false -- No ~ backup files
opt.undofile = true -- Persistent undo (survives closing Neovim)
-- Undo files go in Neovim's standard data directory (~/.local/share/nvim/undo)

-- ── COMPLETION ──────────────────────────────────────────────

opt.completeopt = "menu,menuone,noselect" -- Better completion behavior
opt.pumheight = 10 -- Max items in the completion popup

-- ── WHITESPACE & WRAPPING ───────────────────────────────────

opt.wrap = false -- Don't wrap long lines
opt.linebreak = true -- If wrap is on, break at word boundaries
opt.list = true -- Show hidden characters
opt.listchars = {
  tab = "→ ", -- Tabs shown as arrow
  trail = "·", -- Trailing spaces shown as dot
  nbsp = "␣", -- Non-breaking spaces
}

-- ── PERFORMANCE ─────────────────────────────────────────────

opt.lazyredraw = false -- Keep false with modern Neovim + plugins
opt.updatetime = 100 -- Faster update (better LSP/git gutter response)
opt.timeoutlen = 300 -- Faster keymap chord timeout

-- ── SHELL ───────────────────────────────────────────────────

opt.shell = "/bin/zsh" -- Use zsh for :! commands and :terminal

-- ── CLIPBOARD ───────────────────────────────────────────────

opt.clipboard = "unnamedplus" -- Use system clipboard for all yank/paste

-- ── WILDMENU ────────────────────────────────────────────────

opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignore = "*.o,*.pyc,node_modules/**,.git/**,dist/**"

-- ── MOUSE ───────────────────────────────────────────────────

opt.mouse = "a" -- Enable mouse in all modes (useful for resizing splits)

-- ── MATCHING ────────────────────────────────────────────────

opt.showmatch = true -- Flash matching bracket when closing
opt.matchtime = 2 -- Tenths of a second to show the match
