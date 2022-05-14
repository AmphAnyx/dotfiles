local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  use 'folke/tokyonight.nvim'
  
  use 'lewis6991/impatient.nvim'
  
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use 'goolord/alpha-nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'norcalli/nvim-colorizer.lua'

  use 'windwp/nvim-autopairs'
  

  -- MAYBE:
  --use 'kyazdani42/nvim-tree.lua' --configured
  --use 'folke/trouble.nvim'
  --use 'neovim/nvim-lspconfig'
  --use 'hrsh7th/cmp-nvim-lsp'
  --use 'hrsh7th/cmp-buffer'
  --use 'hrsh7th/cmp-path'
  --use 'hrsh7th/cmp-cmdline'
  --use 'hrsh7th/nvim-cmp' 
  --use 'hrsh7th/LuaSnip'
  --use 'hrsh7th/cmp_luansip'
  --use 'mfussenegger/nvim-jdtls'
  --use 'folke/lsp-colors.nvim' --configured
  
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

require('configs')
