local M = {}

function M.lualineTheme(name)
	local theme = require 'mf.extra.base-16'[name]
	if not theme then
		error('No such theme: "'.. name ..'"')
	end

	local colors = {
		bg			 = theme.base01,
		alt_bg	 = theme.base02,
		dark_fg	= theme.base03,
		fg			 = theme.base04,
		light_fg = theme.base05,
		normal	 = theme.base0A,
		insert	 = theme.base0B,
		visual	 = theme.base09,
		replace	= theme.base08,
	}

	return {
		normal = {
			a = { fg = colors.bg,			 bg = colors.normal },
			b = { fg = colors.light_fg, bg = colors.alt_bg },
			c = { fg = colors.fg,			 bg = colors.bg },
		},
		replace = {
			a = { fg = colors.bg,			 bg = colors.replace },
			b = { fg = colors.light_fg, bg = colors.alt_bg },
		},
		insert = {
			a = { fg = colors.bg,			 bg = colors.insert },
			b = { fg = colors.light_fg, bg = colors.alt_bg },
		},
		visual = {
			a = { fg = colors.bg,			 bg = colors.visual },
			b = { fg = colors.light_fg, bg = colors.alt_bg },
		},
		inactive = {
			a = { fg = colors.dark_fg, bg = colors.bg },
			b = { fg = colors.dark_fg, bg = colors.bg },
			c = { fg = colors.dark_fg, bg = colors.bg },
		},
	}

end

return M
