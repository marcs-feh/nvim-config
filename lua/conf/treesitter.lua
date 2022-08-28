local configs = require 'nvim-treesitter.configs'

configs.setup {
  ensure_installed = {"c", "cpp", "python", "lua", "go", "rust", "bash",
    "latex", "scheme", "javascript", "typescript", "html", "css", "scss",
    "ninja", "make"},

  ignore_install = {"phpdoc", "java", "v"},

  highlight = { -- enable highlighting
    enable = true,
		additional_vim_regex_highlighting = false
  },

  indent = {
    enable = true, -- default is disabled anyways
  }
}

