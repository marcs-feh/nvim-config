--- Core configs
require 'mf.core.plugins'
require 'mf.core.options'
require 'mf.core.languages'
require 'mf.core.keys'
require 'mf.core.colors'

--- LSP configs
local LSP = require 'mf.plug.lsp'
LSP.setup_servers()

--- plug configs
require 'mf.plug.cmp'
require 'mf.plug.lualine'
require 'mf.plug.treesitter'
require 'mf.plug.vsnip'
require 'mf.plug.telescope'
require 'mf.plug.mini_align'
require 'mf.plug.mini_surround'
require 'mf.plug.mini_pairs'
--require 'mf.conf.lsp_installer'

--- Extra scripts
require 'mf.extra.quick-align'
require 'mf.extra.lsp-utils'
require 'mf.extra.header-guard'
