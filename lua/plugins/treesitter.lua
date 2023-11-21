return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "javascript", "html", "css" , "lua"},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,
		})
	end
}
