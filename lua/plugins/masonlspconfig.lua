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
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		require('mason').setup({})
		require("mason-lspconfig").setup {
			ensure_installed = { "lua_ls"},
		}
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
