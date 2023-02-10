local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath);

-- example using a list of specs with the default options
vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "ellisonleao/gruvbox.nvim",
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "sharkdp/fd",
  "nvim-treesitter/nvim-treesitter",
  "BurntSushi/ripgrep",
  "junegunn/fzf.vim",
  "junegunn/fzf",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  --RUST

  "neovim/nvim-lspconfig",
  "simrat39/rust-tools.nvim",
  "rust-lang/rust.vim",
  
  --Completion framework
  
  "hrsh7th/nvim-cmp",

  -- LSP completion source:
  "hrsh7th/cmp-nvim-lsp",

  -- Useful completion sources:
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/cmp-vsnip",                            
  "hrsh7th/cmp-path",                             
  "hrsh7th/cmp-buffer",                           

 -- Rust Syntax Colours
  "tanvirtin/monokai.nvim",
  {
    "https://github.com/neoclide/coc.nvim",
    branch = "release",
    build = "yarn install --frozen-lockfile",

  },
  
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-media-files.nvim",


  --Statusbar
    "kyazdani42/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",



})
