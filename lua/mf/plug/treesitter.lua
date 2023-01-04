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

-- Odin parser
local parser_confs = require 'nvim-treesitter.parsers'.get_parser_configs()
parser_confs.odin = {
	install_info = {
		url = 'https://github.com/ap29600/tree-sitter-odin',
		branch = 'main',
		files = {"src/parser.c"}
  },
	filetype = "odin",
}

--ensure_installed = {"c", "cpp", "python", "lua", "go", "rust", "bash", "latex", "scheme", "javascript", "typescript", "html", "css", "scss", "ninja", "make"},

