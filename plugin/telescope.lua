--- Configuration for Telescope plugin
require("telescope").setup({
	defaults = {
		previewer = true,
		file_ignore_patterns = {
			"doc/_build",
			"__pycache__",
			"venv",
			".venv",
		},
	},
})
