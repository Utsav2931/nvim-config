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
		require('lspconfig').eslint.setup({
			bin = 'eslint', -- or `eslint_d`
			code_actions = {
				enable = true,
				apply_on_save = {
					enable = true,
					types = { "directive", "problem", "suggestion", "layout" },
				},
				disable_rule_comment = {
					enable = true,
					location = "separate_line", -- or `same_line`
				},
			},
			diagnostics = {
				enable = true,
				report_unused_disable_directives = false,
				run_on = "type", -- or `save`
			},
		})
	end
}
