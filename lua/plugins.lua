local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

require('packer').startup(function(use)


  -- Packer can manage itself


	use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
	use 'tpope/vim-surround'
	use 'sainnhe/edge'
	use 'glepnir/lspsaga.nvim'
	use 'itchyny/vim-cursorword'
	use 'hoob3rt/lualine.nvim'
	use 'simrat39/symbols-outline.nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip' 
	use 'saadparwaiz1/cmp_luasnip'
	use {
  "ray-x/lsp_signature.nvim",
  config = function()
	  require "lsp_signature".setup()
			end
}
	use { 'norcalli/nvim-colorizer.lua' ,
	config = function()
	require'colorizer'.setup{}
			end}
--	use {
--	"SmiteshP/nvim-gps",
--	requires = "nvim-treesitter/nvim-treesitter"
--}
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'gcmt/wildfire.vim'
	use 'simrat39/rust-tools.nvim'
	use 'p00f/nvim-ts-rainbow'
	use { 'nvim-treesitter/nvim-treesitter' ,run = ':TSUpdate'}
	use 'folke/zen-mode.nvim'
	use 'mhinz/vim-startify'
	use {"ellisonleao/glow.nvim"}
	-- Lua
	use {
	  "folke/twilight.nvim",
	  config = function()
	    require("twilight").setup {
	      -- your configuration comes here
	      -- or leave it empty to use the default settings
	      -- refer to the configuration section below
	    }
	  end
	}

	use {'gelguy/wilder.nvim',
		run = ':UpdateRemotePlugins',
	config = "vim.cmd [[ call wilder#setup({'modes': [':', '/', '?']}) ]]"	
	}
	use 'dstein64/vim-startuptime'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'jiangmiao/auto-pairs'
	use {
	    'kyazdani42/nvim-tree.lua',
	    requires = 'kyazdani42/nvim-web-devicons'
	}
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
	-- Lua
	use {
	  "folke/trouble.nvim",
	  requires = "kyazdani42/nvim-web-devicons",
	  config = function()
	    require("trouble").setup {
	      -- your configuration comes here
	      -- or leave it empty to use the default settings
	      -- refer to the configuration section below
	    }
	  end
	}






end)


require('setup')
