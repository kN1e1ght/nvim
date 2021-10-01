require('packer').startup(function()
  -- Packer can manage itself


  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
	use 'tpope/vim-surround'
	use 'gcmt/wildfire.vim'
	use 'mhinz/vim-startify'
	use 'honza/vim-snippets'
	use 'sainnhe/edge'
	use 'jiangmiao/auto-pairs'
	use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}

use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
}



end)

    require'nvim-tree'.setup {} 
	  require'lualine'.setup{
		  options = {
			  icons_enabled = true,
			  theme = 'modus_vivendi'
		  }
	  }
require('plug-conf')
