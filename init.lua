--[
--  ========================================
--  Jorge's personal NVIM configuration file
--  ========================================
--]

require("packer-plugins")
require("mappings")
require("autocmd")

-- General configuration
vim.opt.updatetime = 100
vim.opt.fileencoding = "utf-8"
vim.opt.relativenumber = true
vim.opt.textwidth = 80
vim.opt.expandtab = true
vim.cmd("colorscheme volk")
vim.cmd("set colorcolumn=80")
