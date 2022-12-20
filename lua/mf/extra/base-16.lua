local M = {}

M.themes = {
	['gruvbox-light'] = {
		base00 = '#fbf1c7', base01 = '#ebdbb2', base02 = '#d5c4a1', base03 = '#bdae93', base04 = '#665c54', base05 = '#504945',
		base06 = '#3c3836', base07 = '#282828', base08 = '#9d0006', base09 = '#af3a03', base0A = '#b57614', base0B = '#79740e',
		base0C = '#427b58', base0D = '#076678', base0E = '#8f3f71', base0F = '#d65d0e',
	},
	['gruvbox-dark'] = {
		base00 = '#1d2021', base01 = '#3c3836', base02 = '#504945', base03 = '#665c54', base04 = '#bdae93', base05 = '#d5c4a1',
		base06 = '#ebdbb2', base07 = '#fbf1c7', base08 = '#fb4934', base09 = '#fe8019', base0A = '#fabd2f', base0B = '#b8bb26',
		base0C = '#8ec07c', base0D = '#83a598', base0E = '#d3869b', base0F = '#d65d0e',
	},
	['onelight'] = {
		base00 = '#fafafa', base01 = '#f0f0f1', base02 = '#e5e5e6', base03 = '#a0a1a7', base04 = '#696c77', base05 = '#383a42',
		base06 = '#202227', base07 = '#090a0b', base08 = '#ca1243', base09 = '#d75f00', base0A = '#c18401', base0B = '#50a14f',
		base0C = '#0184bc', base0D = '#4078f2', base0E = '#a626a4', base0F = '#986801',
	},
	['onedark'] = {
		base00 = '#282c34', base01 = '#353b45', base02 = '#3e4451', base03 = '#545862', base04 = '#565c64', base05 = '#abb2bf',
		base06 = '#b6bdca', base07 = '#c8ccd4', base08 = '#e06c75', base09 = '#d19a66', base0A = '#e5c07b', base0B = '#98c379',
		base0C = '#56b6c2', base0D = '#61afef', base0E = '#c678dd', base0F = '#be5046',
	},
	['nord']= {
		base00 = '#2e3440', base01 = '#3b4252', base02 = '#434c5e', base03 = '#4c566a', base04 = '#d8dee9', base05 = '#e5e9f0',
		base06 = '#eceff4', base07 = '#8fbcbb', base08 = '#88c0d0', base09 = '#81a1c1', base0A = '#5e81ac', base0B = '#bf616a',
		base0C = '#d08770', base0D = '#ebcb8b', base0E = '#a3be8c', base0F = '#b48ead',
	},
	['tomorrow'] = {
		base00 = '#ffffff', base01 = '#e0e0e0', base02 = '#d6d6d6', base03 = '#8e908c', base04 = '#969896', base05 = '#4d4d4c',
		base06 = '#282a2e', base07 = '#1d1f21', base08 = '#c82829', base09 = '#f5871f', base0A = '#eab700', base0B = '#718c00',
		base0C = '#3e999f', base0D = '#4271ae', base0E = '#8959a8', base0F = '#a3685a',
	},
	['tomorrow-night'] = {
		base00 = '#1d1f21', base01 = '#282a2e', base02 = '#373b41', base03 = '#969896', base04 = '#b4b7b4', base05 = '#c5c8c6',
		base06 = '#e0e0e0', base07 = '#ffffff', base08 = '#cc6666', base09 = '#de935f', base0A = '#f0c674', base0B = '#b5bd68',
		base0C = '#8abeb7', base0D = '#81a2be', base0E = '#b294bb', base0F = '#a3685a',
	},
	['solarized-light'] = {
		base00 = '#fdf6e3', base01 = '#eee8d5', base02 = '#93a1a1', base03 = '#839496', base04 = '#657b83', base05 = '#586e75',
		base06 = '#073642', base07 = '#002b36', base08 = '#dc322f', base09 = '#cb4b16', base0A = '#b58900', base0B = '#859900',
		base0C = '#2aa198', base0D = '#268bd2', base0E = '#6c71c4', base0F = '#d33682',
	},
	['solarized-dark'] = {
		base00 = '#002b36', base01 = '#073642', base02 = '#586e75', base03 = '#657b83', base04 = '#839496', base05 = '#93a1a1',
		base06 = '#eee8d5', base07 = '#fdf6e3', base08 = '#dc322f', base09 = '#cb4b16', base0A = '#b58900', base0B = '#859900',
		base0C = '#2aa198', base0D = '#268bd2', base0E = '#6c71c4', base0F = '#d33682',
	},
	['catpuccin'] = {
		base00 = '#1E1E28', base01 = '#1A1826', base02 = '#302D41', base03 = '#575268', base04 = '#6E6C7C', base05 = '#D7DAE0',
		base06 = '#F5E0DC', base07 = '#C9CBFF', base08 = '#F28FAD', base09 = '#F8BD96', base0A = '#FAE3B0', base0B = '#ABE9B3',
		base0C = '#B5E8E0', base0D = '#96CDFB', base0E = '#DDB6F2', base0F = '#F2CDCD',
	},
	['chalk'] = {
		base00 = '#151515', base01 = '#202020', base02 = '#303030', base03 = '#505050', base04 = '#b0b0b0', base05 = '#d0d0d0',
		base06 = '#e0e0e0', base07 = '#f5f5f5', base08 = '#fb9fb1', base09 = '#eda987', base0A = '#ddb26f', base0B = '#acc267',
		base0C = '#12cfc0', base0D = '#6fc2ef', base0E = '#e1a3ee', base0F = '#deaf8f',
	},
	['tokyo-night-dark'] = {
		base00 = '#1A1B26', base01 = '#16161E', base02 = '#2F3549', base03 = '#444B6A', base04 = '#787C99', base05 = '#A9B1D6',
		base06 = '#CBCCD1', base07 = '#D5D6DB', base08 = '#C0CAF5', base09 = '#A9B1D6', base0A = '#0DB9D7', base0B = '#9ECE6A',
		base0C = '#B4F9F8', base0D = '#2AC3DE', base0E = '#BB9AF7', base0F = '#F7768E',
	},
	['tokyo-night-light'] = {
		base00 = '#D5D6DB', base01 = '#CBCCD1', base02 = '#DFE0E5', base03 = '#9699A3', base04 = '#4C505E', base05 = '#343B59',
		base06 = '#1A1B26', base07 = '#1A1B26', base08 = '#343B58', base09 = '#965027', base0A = '#166775', base0B = '#485E30',
		base0C = '#3E6968', base0D = '#34548A', base0E = '#5A4A78', base0F = '#8C4351',
	},
	['pico'] = {
		base00 = '#000000', base01 = '#1d2b53', base02 = '#7e2553', base03 = '#008751', base04 = '#ab5236', base05 = '#5f574f',
		base06 = '#c2c3c7', base07 = '#fff1e8', base08 = '#ff004d', base09 = '#ffa300', base0A = '#fff024', base0B = '#00e756',
		base0C = '#29adff', base0D = '#83769c', base0E = '#ff77a8', base0F = '#ffccaa',
	},
	['monokai'] = {
		base00 = '#272822', base01 = '#383830', base02 = '#49483e', base03 = '#75715e', base04 = '#a59f85', base05 = '#f8f8f2',
		base06 = '#f5f4f1', base07 = '#f9f8f5', base08 = '#f92672', base09 = '#fd971f', base0A = '#f4bf75', base0B = '#a6e22e',
		base0C = '#a1efe4', base0D = '#66d9ef', base0E = '#ae81ff', base0F = '#cc6633',
	},
}

function ListBase16Themes()
	local all_themes = M.themes
	print('Available themes:')
	for theme, _ in pairs(all_themes) do
		print("* '"..theme.."'");
	end
end

return M
