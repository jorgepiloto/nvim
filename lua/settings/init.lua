-- Declare a 'set' variable 
local set = vim.opt

-- Type of file encoding
set.fileencoding = "utf-8"

-- Line numbers configuration
set.relativenumber = true

-- Convert tab into spaces
set.expandtab = true

-- Desired colorscheme
vim.cmd("colorscheme volk")
