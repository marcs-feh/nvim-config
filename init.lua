--- Core configs
require 'user.options'
require 'user.keys'
require 'user.plugins'

--- LSP configs
local LSP = require 'user.conf.lsp'
LSP.setup_servers()

--- Plugin configs
require 'user.conf.cmp'
require 'user.conf.lsp_installer'
require 'user.conf.lualine'
require 'user.conf.treesitter'
require 'user.conf.vsnip'
require 'user.conf.telescope'
require 'user.conf.mini_align'
require 'user.conf.mini_surround'
