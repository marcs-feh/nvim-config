--- Colorscheme Configuration ---

-- Colorsheme (fancy)
-- Comment this function if using base16
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
Base16CurTheme = 'monokai'
require 'mini.base16'.setup{
	palette = themes[Base16CurTheme]
}
--]]
