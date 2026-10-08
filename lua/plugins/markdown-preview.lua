return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = "cd app && ./install.sh",
	init = function()
		vim.g.mkdp_auto_close = 0 -- keep preview open when switching to non-markdown buffers
		vim.g.mkdp_combine_preview = 1 -- reuse one browser tab across markdown buffers
	end,
	keys = {
		{ "<leader>mp", "<cmd> MarkdownPreviewToggle <CR>", ft = "markdown", desc = "Toggle markdown preview" },
	},
}
