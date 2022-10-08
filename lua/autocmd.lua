--- Auto-commands module
--
-- Auto-commands allow to run commands in an automated way when desired events
-- are detected.
--
-- For example, it is possible to set an auto-command for specifying different
-- indentation levels according to the type of file being editing.

--- Set desired indentation level.
--
-- @param level Desired indentation level
local set_indentation = function(level)
	vim.opt.tabstop = level
	vim.opt.shiftwidth = level
	vim.opt.softtabstop = level
	vim.opt.expandtab = true
end

-- Define common indentation levels in the form of callback functions
local set_indentation_2 = function()
	set_indentation({ level = 2 })
end
local set_indentation_4 = function()
	set_indentation({ level = 4 })
end
local set_indentation_8 = function()
	set_indentation({ level = 8 })
end

-- Declare auto-commands groups
local group_lua = vim.api.nvim_create_augroup("group_lua", { clear = true })
local group_c = vim.api.nvim_create_augroup("group_c", { clear = true })
local group_python =
	vim.api.nvim_create_augroup("group_python", { clear = true })
local group_html = vim.api.nvim_create_augroup("group_html", { clear = true })
local group_css = vim.api.nvim_create_augroup("group_css", { clear = true })
local group_rust = vim.api.nvim_create_augroup("group_rust", { clear = true })

-- Define desired indentation according to file type
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		set_indentation(4)
	end,
	pattern = {
		"*.lua",
		"*.c",
		"*.h",
		"*.py",
		"*.html",
		"*.css",
		"*.ini",
		"*.yml",
		"*.sh",
	},
})
