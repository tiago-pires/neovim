-- leader
vim.g.mapleader = " " 

vim.cmd([[
  set rnu      
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
]])

-- 1 Lazy install check
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

-- 2 load lazy
require("lazy").setup("plugins")

