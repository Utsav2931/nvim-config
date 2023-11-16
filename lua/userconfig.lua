-- Setting options
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
-- Custom keymaps
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep in all files" })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Show all buffers" })
vim.keymap.set('n', '<leader>ff', function()
	local builtin = require('telescope.builtin')
	builtin.find_files()
end, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', function()
	local builtin = require('telescope.builtin')
	builtin.live_grep()
end, { desc = "Live Grep" })
vim.keymap.set('n', '<leader>fb', function()
	local builtin = require('telescope.builtin')
	builtin.buffers()
end, { desc = "Show all buffers" })


vim.keymap.set("v", "<leader>f", ":Format<CR>", { desc = "Formatting in visual mode" })
vim.keymap.set("n", "<Leader>vt", ":NvimTreeToggle<CR>", { desc = "Toggle nvim tree" })
vim.keymap.set("n", "bl", ":ls<CR>:b", { desc = "List all buffers and enter a number to jump to that buffer" })
vim.keymap.set("n", "bn", ":bnext<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "bp", ":bprevious<CR>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<leader>fm", function()
	vim.lsp.buf.format { async = true }
end, { desc = "Lsp formatting" })
vim.keymap.set("v", "<leader>fm", function()
	vim.lsp.buf.format { async = true }
end, { desc = "Lsp formatting in visual mdoe" })
