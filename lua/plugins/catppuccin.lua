return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			no_italic = true,
			transparent_background = true,
			no_bold = true,
		})
		vim.cmd("colorscheme catppuccin")
	end
}
