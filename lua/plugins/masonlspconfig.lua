return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"hrsh7th/cmp-nvim-lsp"
	},
	event = { "BufReadPre", "BufNewFile" },
	cmd = "Mason",
	config = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
		require('mason').setup({})
		require("mason-lspconfig").setup()
		-- require("mason-lspconfig").setup_handlers {
		--     -- The first entry (without a key) will be the default handler
		--     -- and will be called for each installed server that doesn't have
		--     -- a dedicated handler.
		--     function (server_name) -- default handler (optional)
		--         require("lspconfig")[server_name].setup {}
		--     end,
		--     -- Next, you can provide a dedicated handler for specific servers.
		--     -- For example, a handler override for the `rust_analyzer`:
		--     ["rust_analyzer"] = function ()
		--         require("rust-tools").setup {}
		--     end
		-- }
		require("mason-lspconfig").setup_handlers {
			function(server_name) -- default handler (optional)
				require("lspconfig")[server_name].setup {
					capabilities = capabilities
				}
			end,
		}
	end
}
