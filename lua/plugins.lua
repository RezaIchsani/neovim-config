local status, packer = pcall(require, 'packer')
if (not status) then return end

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Startify
  use {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }
  -- Themes
  use 'navarasu/onedark.nvim'

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Tab (Bufferline)
  use 'akinsho/bufferline.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- Indentline
  use 'lukas-reineke/indent-blankline.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  -- Lspsaga
  use 'glepnir/lspsaga.nvim'

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as language server to inject LSP diagnostic, code action and more via lua
  use 'MunifTanjim/prettier.nvim'       -- Prettier plugin for Neovim's built-in LSP Client

  use 'onsails/lspkind-nvim'            -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                -- completion
  -- Snippet
  use 'L3MON4D3/LuaSnip'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Lorem Ipsum generator
  use 'derektata/lorem.nvim'

  -- Fuzzy finder
  -- Telescope file browser
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- Neotree
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'MunifTanjim/nui.nvim',
    }
  }

  -- Portable package manager
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Live server (live preview browser)
  use 'ray-x/web-tools.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  -- Zen mode
  use 'folke/zen-mode.nvim'

  -- Lualine
  use 'nvim-lualine/lualine.nvim'
end)
