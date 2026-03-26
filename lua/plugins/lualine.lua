return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "catppuccin/nvim" },
	event = "VeryLazy",
	-- hide on startpage
	init = function()
		vim.g.lualine_laststatus = vim.o.laststatus
		if vim.fn.argc(-1) > 0 then
			-- set an empty statusline till lualine loads
			vim.o.statusline = " "
		else
			-- hide the statusline on the starter page
			vim.o.laststatus = 0
		end
	end,
	opts = function()
		local lualine_require = require("lualine_require")
		lualine_require.require = require

		local opts = {
			options = {
				theme = "catppuccin-nvim",
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
			},
			-- sections = {
			-- 	lualine_c = {
			-- 		"buffers",
			-- 	},
			-- },
			extensions = { "lazy", "fzf" },
		}
		return opts
	end,
}
