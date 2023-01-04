local C = {
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
	['catpuccin'] = {
		base00 = '#1E1E28', base01 = '#1A1826', base02 = '#302D41', base03 = '#575268', base04 = '#6E6C7C', base05 = '#D7DAE0',
		base06 = '#F5E0DC', base07 = '#C9CBFF', base08 = '#F28FAD', base09 = '#F8BD96', base0A = '#FAE3B0', base0B = '#ABE9B3',
		base0C = '#B5E8E0', base0D = '#96CDFB', base0E = '#DDB6F2', base0F = '#F2CDCD',
	},
	['monokai'] = {
		base00 = '#272822', base01 = '#383830', base02 = '#49483e', base03 = '#75715e', base04 = '#a59f85', base05 = '#f8f8f2',
		base06 = '#f5f4f1', base07 = '#f9f8f5', base08 = '#f92672', base09 = '#fd971f', base0A = '#f4bf75', base0B = '#a6e22e',
		base0C = '#a1efe4', base0D = '#66d9ef', base0E = '#ae81ff', base0F = '#cc6633',
	},
	['mf'] = {
		base00 = '#131b1a', -- bg
		base01 = '#1b2625', -- bg alt
		base02 = '#2f4146', -- bg sel
		base03 = '#496452', -- comments
		base04 = '#d7cab5', -- fg dar
		base05 = '#f0e2ca', -- fg
		base06 = '#faecd3', -- fg li
		base07 = '#233231', -- bg li
		base08 = '#f0dab4', -- vars
		base09 = '#98cd99', -- numbers
		base0A = '#45b975', -- types
		base0B = '#d79461', -- strings
		base0C = '#faecd3', -- support
		base0D = '#f0ea95', -- functions
		base0E = '#7dd558', -- keywords
		base0F = '#e6d8c2', -- regex, separators
	},
}

function ListBase16Themes()
	local all_themes = C
	print('Available themes:')
	for theme, _ in pairs(all_themes) do
		print("* '"..theme.."'");
	end
end

return C

--[[
base00 -> bg
base01 -> bg alt
base02 -> bg sel
base03 -> comments
base04 -> fg dar
base05 -> fg
base06 -> fg li
base07 -> bg li
base08 -> vars
base09 -> numbers
base0A -> types
base0B -> strings
base0C -> support
base0D -> functions
base0E -> keywords
base0F -> regex, separators
--]]

