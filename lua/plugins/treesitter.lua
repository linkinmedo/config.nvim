return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
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
		})

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				pcall(vim.treesitter.start, args.buf)
			end,
		})
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
