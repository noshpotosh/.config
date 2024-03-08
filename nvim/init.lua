-- require("core.general")
-- require("core.keymaps")
-- require("core.plugins")
-- require("core.plugin_config")

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

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'wbthomason/packer.nvim',
  'navarasu/onedark.nvim',
  "lukas-reineke/indent-blankline.nvim",
  "nvim-treesitter/nvim-treesitter",
  "nvim-lua/plenary.nvim",
  "NvChad/nvim-colorizer.lua",
  "lewis6991/gitsigns.nvim",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { {"nvim-lua/plenary.nvim"} }
  }
});

require("core.general")
require("core.keymaps")
require("core.plugins")
