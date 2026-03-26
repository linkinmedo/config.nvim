return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
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
		highlight = {
			enable = true,
			use_languagetree = true,
			additional_vim_regex_highlighting = { "ruby" },
		},
		indent = { enable = true, disable = { "ruby" } },
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
