# Lazy config notes 

## Basic Options

```lua
vim.cmd("set number")
```

Or, multilne with `[[` and `]]`

```lua
vim.cmd([[
  set rnu      
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
]])
```

## Install Lazy

```lua
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

local plugins = {}
local opts = {}

require("lazy").setup(plugins, opts)
```
## Add a color scheme

```lua
local plugins = { 
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 } 
}

local opts = {}

require("lazy").setup(plugins, opts)

require("catppuccin").setup()

vim.cmd.colorscheme "catppuccin"
```

## Add Telescope


```lua
local plugins = { 
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvim-telescope/telescope.nvim", name = "catppuccin", priority = 1000 } 
}

local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
```

## File structure

Alternative, you can use lua modules (files) returning a table
files added to `lua/plugins/` will be loaded by lazy automatically (and reloaded on change).
If you change the init.lua lazy won't re-load, but in `lua/plugins` they will



If lazy see this dirs:
.
├── init.lua
├── lua
│   ├── plugins 
│   │   └── catppuccin.lua
│   └── plugins.lua

You can replace `` 

```lua
require("lazy").setup("plugins")

```
## Add Tree-Sitter

- Text objects (jumps, selections etc)
- Markdown code fence highlighting works
- 

Help parsers understand the code

```lua
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      -- TODO: use vim.defer_fn to improve startup time (see kickstarter)
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { 'c++', 'lua', 'python', 'tsx', 'php', 'markdown', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash' },
        highlight = { enable = true },
        indent = {enable = true},
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<M-space>',
          },
        },
    }) end,
    opts = {},
    build = ':TSUpdate',
  }
```

## LSP

Open standard (think hooks) for language servers
The editor exposes hooks for language programs to act on

- Linters
- Formaters (more then tab, formaters change quotes, semicoloms, etc.

In neovim have plugins for:
1. Installing the language servers (programs to work with the language)
1. Configuring each language servers to our prefs
1. Configure the installing :) (Ensure installed, for example)

### Mason install the LSPs

You could install the LSs cloning repos, using npm , add to path etc, but Mason allow you to config and install...


### LSP config

A plugin to configure the language servers to your liking

### none-ls (fork from null_ls) for lang programs that do not follow lsp

This is an adaptor for comand line programas that are not made to interact with lsps.

Null ls is gone, but now we have none-ls

Some programs are not adapted to LSP, they are just comand line programs. 

### CMP

Completion not as standard as LSP, so evey editor still does its thing

CMP - the dorpdown ui
Luasnip is a snippet engine
cmp_luasnip, 
friendly snippets, a collection of snippets
cmp.nvim.lsp to present lsp  completions
