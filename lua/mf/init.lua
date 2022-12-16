--- Core configs
require 'mf.options'
require 'mf.keys'
require 'mf.plugins'
require 'mf.colors'

--- LSP configs
local LSP = require 'mf.conf.lsp'
LSP.setup_servers()

--- Plugin configs
require 'mf.conf.cmp'
require 'mf.conf.lualine'
require 'mf.conf.treesitter'
require 'mf.conf.vsnip'
require 'mf.conf.telescope'
require 'mf.conf.mini_align'
require 'mf.conf.mini_surround'
--require 'mf.conf.lsp_installer'

--- Extra scripts
require 'mf.extra.quick-align'
require 'mf.extra.lsp-utils'
require 'mf.extra.header-guard'

