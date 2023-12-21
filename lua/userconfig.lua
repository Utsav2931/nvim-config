-- Setting options
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.scrolloff = 8
vim.cmd("colorscheme gruvbox")
-- Custom keymaps

-- Telescope 
local builtin = nil
vim.keymap.set('n', '<leader>ff', function()
	if builtin == nil then
		builtin = require('telescope.builtin')
	end
	builtin.find_files()
end, { desc = "Find files" })
vim.keymap.set('n', '<leader>gf', function()
	if builtin == nil then
		builtin = require('telescope.builtin')
	end
	builtin.git_files()
end, { desc = "Find Git Files" })
vim.keymap.set('n', '<leader>fg', function()
	if builtin == nil then
		builtin = require('telescope.builtin')
	end
	builtin.live_grep()
end, { desc = "Live Grep" })
vim.keymap.set('n', '<leader>fb', function()
	if builtin == nil then
		builtin = require('telescope.builtin')
	end
	builtin.buffers()
end, { desc = "Show all buffers" })

-- Lsp stuff
vim.keymap.set("n", "gd", function ()
	vim.lsp.buf.definition()
end, {desc = "Go to definition"})
vim.keymap.set("n", "<leader>fm", function()
	vim.lsp.buf.format { async = true }
end, { desc = "Lsp formatting" })
vim.keymap.set("v", "<leader>f", ":Format<CR>", { desc = "Formatting in visual mode" })
vim.keymap.set("v", "<leader>fm", function()
	vim.lsp.buf.format { async = true }
end, { desc = "Lsp formatting in visual mdoe" })

-- Diagnostic stuff
vim.keymap.set("n", "ld", ":Trouble document_diagnostics<CR>",{ desc = "List document diagnostic" })

-- Nvim Tree
vim.keymap.set("n", "<leader>vt", ":NvimTreeToggle<CR>", { desc = "Toggle nvim tree" })

-- Buffer Navigation
vim.keymap.set("n", "<leader>bl", ":ls<CR>:b", { desc = "List all buffers and enter a number to jump to that buffer" })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Jump to previous buffer" })

-- Restore the session
vim.keymap.set("n", "<leader>sr", ":source ~/.config/nvim/sessions/vimbook.vim<CR>", {desc = "Restore previous session"})
vim.keymap.set("n", "<leader>ms", ":mks! ~/.config/nvim/sessions/vimbook.vim<CR>", {desc = "Make a session"})

-- Auto cmds
-- vim.api.nvim_create_autocmd({"VimLeavePre"}, {
-- 	command = "mks! ~/.config/nvim/sessions/vimbook.vim"
-- })
-- vim.api.nvim_create_autocmd({"VimEnter"}, {
	-- command = "source ~/.config/nvim/sessions/vimbook.vim"
-- })  
vim.api.nvim_create_autocmd({"TextChanged", "InsertLeave"}, {
	command = "silent! w"
})

-- Setting options
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.scrolloff = 8
vim.cmd("colorscheme gruvbox")
-- Custom keymaps

-- Telescope 
vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set('n', '<leader>gf', ":Telescope git_files<CR>", { desc = "Find Git Files" })
vim.keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>", { desc = "Live Grep" })
vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>", { desc = "Show all buffers" })

-- Lsp stuff
vim.keymap.set("n", "gd", function ()
	vim.lsp.buf.definition()
end, {desc = "Go to definition"})
vim.keymap.set("n", "<leader>fm", function()
	vim.lsp.buf.format { async = true }
end, { desc = "Lsp formatting" })
vim.keymap.set("v", "<leader>f", ":Format<CR>", { desc = "Formatting in visual mode" })
vim.keymap.set("v", "<leader>fm", function()
	vim.lsp.buf.format { async = true }
end, { desc = "Lsp formatting in visual mdoe" })
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {desc = "Code Adction"})

-- Diagnostic stuff
vim.keymap.set("n", "ld", ":Trouble document_diagnostics<CR>",{ desc = "List document diagnostic" })

-- Nvim Tree
vim.keymap.set("n", "<leader>vt", ":NvimTreeToggle<CR>", { desc = "Toggle nvim tree" })

-- Buffer Navigation
vim.keymap.set("n", "<leader>bl", ":ls<CR>:b", { desc = "List all buffers and enter a number to jump to that buffer" })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Jump to previous buffer" })

-- Restore the session
vim.keymap.set("n", "<leader>sr", ":source ~/.config/nvim/sessions/vimbook.vim<CR>", {desc = "Restore previous session"})
vim.keymap.set("n", "<leader>ms", ":mks! ~/.config/nvim/sessions/vimbook.vim<CR>", {desc = "Make a session"})

-- Auto cmds
-- vim.api.nvim_create_autocmd({"VimLeavePre"}, {
-- 	command = "mks! ~/.config/nvim/sessions/vimbook.vim"
-- })
-- vim.api.nvim_create_autocmd({"VimEnter"}, {
	-- command = "source ~/.config/nvim/sessions/vimbook.vim"
-- })  
vim.api.nvim_create_autocmd({"TextChanged", "InsertLeave"}, {
	command = "silent! w"
})
