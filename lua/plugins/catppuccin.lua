return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			no_italic = true,
			no_bold = true,
		})
		vim.cmd("colorscheme catppuccin")
	end
}
