--[
--  ========================================
--  Jorge's personal NVIM configuration file
--  ========================================
--]

require("packer-plugins")
require("mappings")


-- General configuration
local set = vim.opt
set.fileencoding = "utf-8"
set.relativenumber = true
set.textwidth = 80
set.expandtab = true
vim.cmd("colorscheme volk")
