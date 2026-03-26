local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Remove TAB mapping
map("n", "<tab>", "")
map("n", "<S-tab>", "")

-- Easy quit insert mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Easy yank link
map("n", "Y", "yy", { desc = "Yank line" })

-- Move selection around
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected up" })

-- Keep selection when indenting
map("v", ">", ">gv", { desc = "keep selected lines when indent in" })
map("v", "<", "<gv", { desc = "keep selected lines when indent out" })

-- Jump to the end of the line while in insert mode
map("i", "<C-a>", "<Esc>A", { desc = "Jump to end of line instert mode" })

-- Copy to system clipboard
map("x", "<C-c>", '"+y', { desc = "Copy to system clipboard" })

-- Easy split navigation
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Neogit mappings
map("n", "<leader>gs", "<cmd> Neogit kind=vsplit <CR>", { desc = "Neogit status" })
map("n", "<leader>gc", "<cmd> Neogit commit kind=floating <CR>", { desc = "Neogit commit" })

-- Close current buffer
map("n", "<leader>x", "<cmd> bp|bd #<CR>", { desc = "Close current buffer" })
