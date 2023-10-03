-- In this file we are defining any packer plugins we want to include in our nvim 
-- configuration. Configurations for each plugin can be found in the respective 
-- files found in the ./plugins directory.

-- Make sure you have already installed packer on your system. You can do this
-- cloning the project from Github. You can find more info in their repo.

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- vim-closer
	use 'rstacruz/vim-closer'

	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { 
			{'nvim-lua/plenary.nvim'}, 
			{'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' } 
		}
	}

	-- treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	-- nvim-tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			{'nvim-tree/nvim-web-devicons'},
		}
	}

	-- undotree
	use('mbbill/undotree')

	-- fugitive (git wrapper)
	use('tpope/vim-fugitive')
	

	
	-- bufferline
	use{
		'akinsho/bufferline.nvim',
		tag = "*",
		requires = 'nvim-tree/nvim-web-devicons'
	}

	-- lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- toggleterm
	use {
		"akinsho/toggleterm.nvim",
		tag = '*',
		config = function()
			require("toggleterm").setup()
		end
	}

	-- autopair
	use('jiangmiao/auto-pairs')

end)
