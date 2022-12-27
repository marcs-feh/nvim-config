--- Packer plugin configuration ---

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		'git',
		'clone',
		'--depth',
		'1',
		'https://github.com/wbthomason/packer.nvim',
		install_path,
	}
	print 'Installing packer close and reopen Neovim...'
	vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require('packer.util').float { border = 'rounded' }
		end,
	},
}

-- Install your plugins here
return packer.startup(function(use)
	-- Have packer manage itself
	use 'wbthomason/packer.nvim'
	-- An implementation of the Popup API from vim in Neovim
	use 'nvim-lua/popup.nvim'
	-- Useful lua functions used by lots of plugins
	use 'nvim-lua/plenary.nvim'
	-- AST query and good syntax hightlighting
	use 'nvim-treesitter/nvim-treesitter'
	-- Library with many small, super useful plugins
	use 'echasnovski/mini.nvim'
	-- Status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	-- Completion plugins
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- Snippets
	use 'hrsh7th/vim-vsnip'

	-- LSP Support
	use 'neovim/nvim-lspconfig'

	-- Telescope
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
			 requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- CodeDark colorscheme
	use 'Mofiqul/vscode.nvim'

	-- Odin hightlighting
	use 'marcs-feh/odin.vim'

	-- Nim hightlighting
	use 'zah/nim.vim'

	-- Automatically set up your config after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
