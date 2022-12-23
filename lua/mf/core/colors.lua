--- Colorscheme Configuration ---

-- Colorsheme (fancy)
require('vscode').setup({
	transparent = true,
	group_overrides = {
		['@type'] = {fg='#569cd6'},
		['CursorLine'] = {bg=nil},
	},
})

-- Colorsheme (simple)
-- Use ListBase16Themes() to list themes
--[[
local themes = require 'mf.extra.base-16'
Base16CurTheme = 'mf'
require 'mini.base16'.setup{
	palette = themes[Base16CurTheme]
}
]]

