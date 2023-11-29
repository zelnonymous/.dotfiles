-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' 

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
     -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  } 
  use('Mofiqul/vscode.nvim')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use('Decodetalkers/csharpls-extended-lsp.nvim')
  use('mfussenegger/nvim-dap')
  use('rcarriga/nvim-dap-ui', {requires = 'mfussenegger/nvim-dap'})
  use('jay-babu/mason-nvim-dap.nvim')
  use('nvim-tree/nvim-web-devicons')
  use('lewis6991/gitsigns.nvim')
  use('feline-nvim/feline.nvim')
end)
