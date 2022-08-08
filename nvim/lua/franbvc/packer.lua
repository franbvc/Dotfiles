-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- Colorscheme (Tokyo Night)
  use 'folke/tokyonight.nvim'

	-- Git
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

	-- Auto close pairs ((), {}, [])
	use 'cohama/lexima.vim'

	-- NERDTree file system explorer
	use 'preservim/nerdtree'

	-- LSP config (Language Server Protocol)
	use	'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'

end)
