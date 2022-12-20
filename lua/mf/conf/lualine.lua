require('lualine').setup {
	options = {
		icons_enabled = false,
		theme = 'auto',
		component_separators = { left = '', right = ''},
		section_separators =	 { left = '', right = ''},
		--component_separators = { left = '|', right = '|'},
		--section_separators = { left = '', right = ''},
		disabled_filetypes = {},
		always_divide_middle = true,
		globalstatus = false,
	},
	refresh = {
		statusline = 1000,
		winbar     = 1000,
		tabline    = 1000,
	},
	sections = {
		lualine_a = {'mode', },
		lualine_b = {'branch', 'diagnostics', },
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'filetype'},
		lualine_y = {},
		lualine_z = {'progress', 'location'}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {'progress', 'location'}
	},
	tabline = {
		lualine_a = {'filename'},
		lualine_b = { },
		lualine_c = { },
		lualine_x = { },
		lualine_y = { },
		lualine_z = { }
	},
	extensions = {}
}

