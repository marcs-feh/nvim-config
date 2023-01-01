local configs = require 'nvim-treesitter.configs'

configs.setup {
	ensure_installed = {},

	ignore_install = {"phpdoc", "v"},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},

	indent = {
		enable = true,
	}
}

--ensure_installed = {"c", "cpp", "python", "lua", "go", "rust", "bash", "latex", "scheme", "javascript", "typescript", "html", "css", "scss", "ninja", "make"},

