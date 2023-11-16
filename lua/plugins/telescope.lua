return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	lazy = true,
	cmd = "Telescope",
	config = function()
		require('telescope').setup({
			defaults = {
				layout_config = {
					horizontal = { preview_width = 0.6 }
					-- other layout configuration here
				},
				-- other defaults configuration here
			},
			-- other configuration values here
		})
	end,
}
