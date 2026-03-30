return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"vim",
			"lua",
			"luadoc",
			"html",
			"css",
			"javascript",
			"typescript",
			"tsx",
			"c",
			"dart",
			"markdown",
			"markdown_inline",
		},
		auto_install = true,
		highlight = { enable = true },
	},
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
