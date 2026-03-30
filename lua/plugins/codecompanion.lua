return {
	"olimorris/codecompanion.nvim",
	build = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"OXY2DEV/markview.nvim",
	},
	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = {
						name = "copilot",
						model = "gpt-5-mini",
					},
				},
				inline = {
					adapter = {
						name = "copilot",
						model = "gpt-5-mini",
					},
				},
				cmd = {
					adapter = {
						name = "copilot",
						model = "gpt-5-mini",
					},
				},
			},
			http = {
				adapters = {
					gemini = function()
						return require("codecompanion.adapters").extend("gemini", {
							schema = {
								model = {
									default = "gemini-3-flash-preview",
								},
							},
							env = {
								api_key = vim.env.GEMINI_API_KEY,
							},
						})
					end,
				},
			},
		})
		local map = vim.keymap.set

		map("n", "<leader>cc", ":Telescope codecompanion<CR>", { desc = "open codecompanion actions menu" })
	end,
}
