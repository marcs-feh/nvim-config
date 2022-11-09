-- copy themes to register a
-- let c = getcompletion('', 'color')
-- redir @a | echo c | redir END

Themes = {
	'base16-primer-dark',
	'base16-ayu-dark',
	'base16-monokai',
	'base16-tokyo-night-terminal-dark',
	'base16-gruvbox-dark-hard',
	'base16-tomorrow-night',
	'base16-chalk',
	'base16-framer',
	'base16-default-dark'
}


ThemeIdx = 1

function CycleTheme()
	if (ThemeIdx + 1) > #Themes then
		ThemeIdx = 1
	end
	vim.cmd((':colorscheme %s'):format(Themes[ThemeIdx]))
	print(Themes[ThemeIdx])
	ThemeIdx = ThemeIdx + 1
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", "<C-t>", ":lua CycleTheme()<CR>", opts)

