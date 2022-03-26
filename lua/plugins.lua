-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Run `PackerSync` whenever you make changes to your plugin configuration

-- Auto-install packer in case it hasn't been installed.
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

require('packer').startup(
  function()
    use 'wbthomason/packer.nvim'

    use {'neovim/nvim-lspconfig', config = [[require('config.lsp')]]}

    -- auto-completion engine
    use { 'hrsh7th/nvim-compe', event = 'InsertEnter *', config = [[require('config.compe')]] }

    --use {'glepnir/lspsaga.nvim', config=[[require('config.lspsaga')]]}
    use {'folke/lsp-colors.nvim', config=[[require('config.lsp-colors')]]}
    use {'kyazdani42/nvim-web-devicons', config=[[require('config.web-devicons')]]}

    if vim.g.is_mac or vim.g.is_linux then
      use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = [[require('config.treesitter')]]}
    end

    use 'lifepillar/vim-solarized8'
    use 'shaunsingh/nord.nvim'
    use 'sainnhe/everforest'
    use 'morhetz/gruvbox'

    use 'vim-airline/vim-airline-themes'
    use 'vim-airline/vim-airline'

    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}, config = [[require('config.telescope')]]}

    -- Git 
    use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}, config = [[require('config.gitsigns')]] }

    -- Comment
    use { 'b3nj5m1n/kommentary', config=[[require('config.kommentary')]]}

    -- Tabline plugin
    use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}, config = [[require('config.barbar')]] }

    use 'simrat39/symbols-outline.nvim'

    use { 'windwp/nvim-autopairs', config = [[require('config.autopairs')]] }
  end
)

