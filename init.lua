--- Core configs
require 'core.options'
require 'core.keys'
require 'core.plugins'

--- Local user scripts
require 'local.lsp-utils'

--- LSP configs
local LSP = require 'conf.lsp'
LSP.setup_servers()

--- Plugin configs
require 'conf.cmp'
require 'conf.lsp_installer'
require 'conf.lualine'
require 'conf.treesitter'
require 'conf.vsnip'
require 'conf.telescope'

