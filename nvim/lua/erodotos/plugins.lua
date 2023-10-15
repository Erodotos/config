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
		tag = '*'
	}

	-- autopair
	use('jiangmiao/auto-pairs')

	-- lsp(language server protocol)	
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
			{'L3MON4D3/LuaSnip'},
		}
	}
end)
