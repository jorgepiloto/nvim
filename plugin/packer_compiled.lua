-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function("has", { "nvim-0.5" }) ~= 1 then
	vim.api.nvim_command(
		'echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"'
	)
	return
end

vim.api.nvim_command("packadd packer.nvim")

local no_errors, error_msg = pcall(function()
	local time
	local profile_info
	local should_profile = false
	if should_profile then
		local hrtime = vim.loop.hrtime
		profile_info = {}
		time = function(chunk, start)
			if start then
				profile_info[chunk] = hrtime()
			else
				profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
			end
		end
	else
		time = function(chunk, start) end
	end

	local function save_profiles(threshold)
		local sorted_times = {}
		for chunk_name, time_taken in pairs(profile_info) do
			sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
		end
		table.sort(sorted_times, function(a, b)
			return a[2] > b[2]
		end)
		local results = {}
		for i, elem in ipairs(sorted_times) do
			if not threshold or threshold and elem[2] > threshold then
				results[i] = elem[1] .. " took " .. elem[2] .. "ms"
			end
		end

		_G._packer = _G._packer or {}
		_G._packer.profile_output = results
	end

	time([[Luarocks path setup]], true)
	local package_path_str =
		"/home/jorge/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jorge/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jorge/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jorge/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
	local install_cpath_pattern =
		"/home/jorge/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
	if not string.find(package.path, package_path_str, 1, true) then
		package.path = package.path .. ";" .. package_path_str
	end

	if not string.find(package.cpath, install_cpath_pattern, 1, true) then
		package.cpath = package.cpath .. ";" .. install_cpath_pattern
	end

	time([[Luarocks path setup]], false)
	time([[try_loadstring definition]], true)
	local function try_loadstring(s, component, name)
		local success, result =
			pcall(loadstring(s), name, _G.packer_plugins[name])
		if not success then
			vim.schedule(function()
				vim.api.nvim_notify(
					"packer.nvim: Error running "
						.. component
						.. " for "
						.. name
						.. ": "
						.. result,
					vim.log.levels.ERROR,
					{}
				)
			end)
		end
		return result
	end

	time([[try_loadstring definition]], false)
	time([[Defining packer_plugins]], true)
	_G.packer_plugins = {
		LuaSnip = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/LuaSnip",
			url = "https://github.com/L3MON4D3/LuaSnip",
		},
		["cmp-buffer"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/cmp-buffer",
			url = "https://github.com/hrsh7th/cmp-buffer",
		},
		["cmp-nvim-lsp"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
			url = "https://github.com/hrsh7th/cmp-nvim-lsp",
		},
		["cmp-nvim-lua"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
			url = "https://github.com/hrsh7th/cmp-nvim-lua",
		},
		["cmp-path"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/cmp-path",
			url = "https://github.com/hrsh7th/cmp-path",
		},
		cmp_luasnip = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
			url = "https://github.com/saadparwaiz1/cmp_luasnip",
		},
		["friendly-snippets"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/friendly-snippets",
			url = "https://github.com/rafamadriz/friendly-snippets",
		},
		["lazygit.nvim"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
			url = "https://github.com/kdheepak/lazygit.nvim",
		},
		["lsp-zero.nvim"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
			url = "https://github.com/VonHeikemen/lsp-zero.nvim",
		},
		["nvim-cmp"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-cmp",
			url = "https://github.com/hrsh7th/nvim-cmp",
		},
		["nvim-lsp-installer"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
			url = "https://github.com/williamboman/nvim-lsp-installer",
		},
		["nvim-lspconfig"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
			url = "https://github.com/neovim/nvim-lspconfig",
		},
		["packer.nvim"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/packer.nvim",
			url = "https://github.com/wbthomason/packer.nvim",
		},
		["plenary.nvim"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/plenary.nvim",
			url = "https://github.com/nvim-lua/plenary.nvim",
		},
		tagbar = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/tagbar",
			url = "https://github.com/preservim/tagbar",
		},
		["telescope.nvim"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/telescope.nvim",
			url = "https://github.com/nvim-telescope/telescope.nvim",
		},
		["vim-gitgutter"] = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
			url = "https://github.com/airblade/vim-gitgutter",
		},
		vimwiki = {
			config = {
				"\27LJ\2\2p\0\0\3\0\4\0\a6\0\0\0009\0\1\0004\1\3\0005\2\3\0>\2\1\1=\1\2\0K\0\1\0\1\0\3\bext\b.md\vsyntax\rmarkdown\tpath\30/home/jorge/Ansys/vimwiki\17vimwiki_list\6g\bvim\0",
			},
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/vimwiki",
			url = "https://github.com/vimwiki/vimwiki",
		},
		volk = {
			loaded = true,
			path = "/home/jorge/.local/share/nvim/site/pack/packer/start/volk",
			url = "https://github.com/jorgepiloto/volk",
		},
	}

	time([[Defining packer_plugins]], false)
	-- Config for: vimwiki
	time([[Config for vimwiki]], true)
	try_loadstring(
		"\27LJ\2\2p\0\0\3\0\4\0\a6\0\0\0009\0\1\0004\1\3\0005\2\3\0>\2\1\1=\1\2\0K\0\1\0\1\0\3\bext\b.md\vsyntax\rmarkdown\tpath\30/home/jorge/Ansys/vimwiki\17vimwiki_list\6g\bvim\0",
		"config",
		"vimwiki"
	)
	time([[Config for vimwiki]], false)
	if should_profile then
		save_profiles()
	end
end)

if not no_errors then
	error_msg = error_msg:gsub('"', '\\"')
	vim.api.nvim_command(
		'echohl ErrorMsg | echom "Error in packer_compiled: '
			.. error_msg
			.. '" | echom "Please check your config for correctness" | echohl None'
	)
end
