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
			"json",
			"c",
			"dart",
			"markdown",
			"markdown_inline",
			"toml",
			"python",
			"bash",
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
					hybrid_modes = { "n", "v", "V", "i" },
					ignore_buftypes = {},
				},
				renderers = {
					markdown_table = function(buffer, item)
						require("markview-smart-tables").render(buffer, item)
					end,
				},
			},
		},
		{
			"gunasekar/markview-smart-tables.nvim",
			dependencies = { "OXY2DEV/markview.nvim" },
			opts = {
				wrap_width = 0.9, -- max table width: fraction of the window (0<n<=1)
				-- or absolute column count (n>1)
				wrap_minwidth = 5, -- smallest a column may shrink to before long
				-- words are hard-broken
			},
		},
	},
}
