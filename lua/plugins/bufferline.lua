return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		options = {
			diagnostics = "nvim_lsp",
		}
	},
	event = { "BufReadPre", "BufNewFile" },
	lazy = true
}
