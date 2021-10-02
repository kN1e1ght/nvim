local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

require('packer').startup(function()


  -- Packer can manage itself


	use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
	use 'tpope/vim-surround'
	use 'gcmt/wildfire.vim'
	use 'folke/zen-mode.nvim'
	use 'mhinz/vim-startify'
	use 'sainnhe/edge'
	use {"ellisonleao/glow.nvim"}
	--use {'gelguy/wilder.nvim',
	--config = function()
	--	require('wilder').setup{'modes'= [':', '/', '?']}end
	--
	--}
	use 'dstein64/vim-startuptime'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'jiangmiao/auto-pairs'
	use {
	  'hoob3rt/lualine.nvim',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}

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
