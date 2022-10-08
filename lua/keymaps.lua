--- Map desired key to command for a given mode.
local keymap_function = function(mode, key, command)
	vim.api.nvim_set_keymap(
		mode,
		key,
		command,
		{ noremap = true, silent = true }
	)
end

-- Define the leader key
vim.g.mapleader = ","

-- Execute and test files
keymap_function(
	"n",
	"<F5>",
	":TermExec direction='float' cmd='clear && python % && echo && echo -n Press enter to continue... && read && exit'<CR>"
)
keymap_function(
	"n",
	"<leader>r",
	":TermExec direction='float' cmd='clear && python % && echo && echo -n Press enter to continue... && read && exit'<CR>"
)
keymap_function(
	"n",
	"<F6>",
	":TermExec direction='float' cmd='clear && pytest % && echo && echo -n Press enter to continue... && read && exit'<CR>"
)
keymap_function("n", "<F8>", ":TagbarToggle<CR>")

-- Telescope mappings
keymap_function("n", "<leader>ff", ":Telescope find_files<CR>")
keymap_function("n", "<leader>hf", ":Telescope find_files hidden=true<CR>")
keymap_function("n", "<leader>fb", ":Telescope buffers<CR>")
keymap_function("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap_function("n", "<leader>gg", ":LazyGit<CR>")

-- LuaSnip mappings
keymap_function("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>")
keymap_function("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>")
keymap_function("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>")
keymap_function("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>")

-- Get back to normal mode from terminal using <Esc>
keymap_function("t", "<Esc>", [[<C-\><C-n>]])

-- Quickly move accross buffers with CR+AvPag or CR+RePag
keymap_function("n", "<c-PageUp>", ":bn<CR>")
keymap_function("n", "<c-PageDown>", ":bp<CR>")
