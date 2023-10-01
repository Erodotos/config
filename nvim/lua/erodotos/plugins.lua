-- In this file we are defining any packer plugins we want to include in our nvim 
-- configuration. Configurations for each plugin can be found in the respective 
-- files found in the ./plugins directory.

-- Make sure you have already installed packer on your system. You can do this
-- cloning the project from Github. You can find more info in their repo.

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Autoclose brackets
  use 'rstacruz/vim-closer'

  -- A fuzzy file finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { 
      {'nvim-lua/plenary.nvim'}, 
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' } 
    }
  }

  -- Syntax Highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- File Explorer
  use ('nvim-tree/nvim-web-devicons')
  use ('nvim-tree/nvim-tree.lua')
end)
