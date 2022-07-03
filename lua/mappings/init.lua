--- Map desired key to command for a given mode.
-- @param mode Select between 'n/normal', 'i/insert' or 'v/visual' 
-- @param key The name of the key to be used as map
-- @param command The command to be executed when pressing the key combination
local keymap_function = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, {noremap = true, silent = true})
end 


-- Define the leader key
vim.g.mapleader = ","

-- All the mapping functions
keymap_function("n", "<leader>ff", ":Telescope find_files<CR>")
keymap_function("n", "<leader>fb", ":Telescope buffers<CR>")
keymap_function("n", "<leader>lg", ":LazyGit<CR>")


