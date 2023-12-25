return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end
}
