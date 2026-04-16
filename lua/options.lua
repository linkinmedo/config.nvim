local opt = vim.opt
local o = vim.o
local g = vim.g
local cmd = vim.cmd

-- Set <space> as the leader key
g.mapleader = " "
g.maplocalleader = " "

-- Enable nerd font
g.have_nerd_font = false

-- Show line numbers
opt.number = true

-- Enable relative line number
opt.relativenumber = true

-- Enable mouse mode
opt.mouse = "a"

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Decrease update time
-- opt.updatetime = 250

-- Decrease mapped sequence wait time
-- opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor
-- opt.list = true
-- opt.listchars = { tab = '│ ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
opt.inccommand = "split"

-- Show which line your cursor is on
opt.cursorline = true
o.cursorlineopt = "number"

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

-- BIDI (for arabic)
o.termbidi = true

-- Set the colorscheme
cmd([[colorscheme catppuccin-mocha]])
