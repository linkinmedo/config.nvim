return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local langs = { "vim", "lua", "luadoc", "html", "css", "javascript", "typescript", "tsx", "c", "dart", "markdown", "markdown_inline" }
		local installed = require("nvim-treesitter").get_installed()
		local to_install = vim.tbl_filter(function(lang)
			return not vim.list_contains(installed, lang)
		end, langs)
		if #to_install > 0 then
			require("nvim-treesitter").install(to_install)
		end
	end,
	dependencies = {
		{
			"OXY2DEV/markview.nvim",
			lazy = false,
			priority = 49,
			opts = {
				preview = {
					filetypes = { "markdown", "codecompanion" },
					ignore_buftypes = {},
				},
			},
		},
	},
}
