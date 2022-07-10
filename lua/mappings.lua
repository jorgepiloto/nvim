--- Map desired key to command for a given mode.
local keymap_function = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, {noremap = true, silent = true})
end


-- Define the leader key
vim.g.mapleader = ","

-- Execute and test files
keymap_function("n", "<F5>", ":terminal python %<CR>")
keymap_function("n", "<F6>", ":terminal pytest %<CR>")
keymap_function("n", "<F8>", ":TagbarToggle<CR>")

-- Telescope mappings
keymap_function("n", "<leader>ff", ":Telescope find_files<CR>")
keymap_function("n", "<leader>hff", ":Telescope find_files hidden=true<CR>")
keymap_function("n", "<leader>fb", ":Telescope buffers<CR>")
keymap_function("n", "<leader>lg", ":LazyGit<CR>")

-- LuaSnip mappings
keymap_function("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>")
keymap_function("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>")
keymap_function("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>")
keymap_function("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>")
