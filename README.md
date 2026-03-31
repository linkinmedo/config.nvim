# Neovim Config

My personal Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Structure

```
nvim/
├── init.lua              # Entry point — loads .env, then lazy, options, mappings
├── lua/
│   ├── config/lazy.lua   # lazy.nvim bootstrap and setup
│   ├── options.lua       # Editor settings
│   ├── mappings.lua      # Key mappings
│   ├── dotenv.lua        # .env file parser
│   └── plugins/          # One file per plugin
```

## Plugins

| Plugin | Purpose |
|--------|---------|
| [catppuccin](https://github.com/catppuccin/nvim) | Colorscheme (Mocha) |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/tool installer |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git gutter signs & hunk operations |
| [neogit](https://github.com/NeogitOrg/neogit) | Git interface |
| [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) | AI coding assistant |
| [copilot.vim](https://github.com/github/copilot.vim) | GitHub Copilot |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [mini.files](https://github.com/echasnovski/mini.files) | File explorer |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Surround operations |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-close pairs |
| [undotree](https://github.com/mbbill/undotree) | Visual undo history |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODOs |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |

## Language Support

**LSP servers:** gopls, tsgo, html, cssls, angularls, lua_ls

**Formatters:** stylua (Lua), prettierd + biome (JS/TS/HTML/CSS/JSON/YAML)

**Treesitter parsers:** lua, html, css, javascript, typescript, tsx, c, dart, markdown, vim

## Key Mappings

### General

| Key | Mode | Action |
|-----|------|--------|
| `;` | n | Enter command mode |
| `jk` | i | Exit insert mode |
| `Y` | n | Yank line |
| `<C-h/j/k/l>` | n | Navigate splits |
| `<C-c>` | x | Copy to system clipboard |
| `<C-a>` | i | Jump to end of line |
| `J` / `K` | v | Move selection down/up |
| `>` / `<` | v | Indent keeping selection |

### Leader Mappings

| Key | Action |
|-----|--------|
| `<leader>e` | File explorer |
| `<leader>x` | Close buffer |
| `<leader>u` | Toggle undotree |
| `<leader>fm` | Format file |
| `<leader>cc` | CodeCompanion actions |
| `<leader>gs` | Neogit status |
| `<leader>gc` | Neogit commit |
| `<leader>rn` | LSP rename |
| `<leader>ca` | Code action |
| `<leader>th` | Toggle inlay hints |

### Telescope

| Key | Action |
|-----|--------|
| `<C-p>` | Find files |
| `<C-f>` | Find all files (incl. hidden) |
| `<C-g>` | Live grep |
| `<C-t>` | Find buffers |
| `<leader>s.` | Recent files |
| `<leader>sg` | Grep |
| `<leader>sh` | Help tags |
| `<leader>sk` | Keymaps |
| `<leader>sd` | Diagnostics |
| `<leader>sn` | Neovim config files |

## Prerequisites

- Neovim 0.12+
- `tree-sitter-cli` — required by nvim-treesitter to compile parsers

## Setup

1. Clone this repo to `~/.config/nvim`
2. Copy `.env.sample` to `.env` and fill in your API keys
3. Open Neovim — lazy.nvim will auto-install on first launch
