return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		config = function()
			local options = {
				formatters_by_ft = {
					lua = { "stylua" },
					css = { "prettierd", "oxfmt" },
					json = { "prettierd", "oxfmt" },
					html = { "prettierd", "oxfmt" },
					htmlangular = { "prettierd", "oxfmt" },
					javascript = { "prettierd", "oxfmt" },
					typescript = { "prettierd", "oxfmt" },
					yaml = { "prettierd", "oxfmt" },
					python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },
					sh = { "shfmt" },
					bash = { "shfmt" },
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
