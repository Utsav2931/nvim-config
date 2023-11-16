return {
	"mhartington/formatter.nvim",
	cmd = "Format",
	config = function()
		require("formatter").setup {
			filetype = {
				javascript = {
					require("formatter.defaults.prettier")
				}
			}
		}
	end
}
