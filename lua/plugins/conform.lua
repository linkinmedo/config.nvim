return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		config = function()
			local options = {
				formatters_by_ft = {
					lua = { "stylua" },
					css = { "prettierd", "biome" },
					json = { "prettierd", "biome" },
					html = { "prettierd", "biome" },
					htmlangular = { "prettierd", "biome" },
					javascript = { "prettierd", "biome" },
					typescript = { "prettierd", "biome" },
					yaml = { "prettierd", "biome" },
				},

				-- format_on_save = {
				--   -- These options will be passed to conform.format()
				--   timeout_ms = 500,
				--   lsp_fallback = true,
				-- },
			}

			require("conform").setup(options)

			vim.keymap.set("n", "<leader>fm", function()
				require("conform").format({ async = true, lsp_fallback = true })
			end, { desc = "general format file" })
		end,
	},
}
