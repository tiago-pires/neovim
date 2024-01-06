return {
  "nvimtools/none-ls.nvim",
  config = function()
    local none_ls = require("null-ls") -- project still refers to old null-ls, for now
    none_ls.setup({
      sources = {
        -- lua
        none_ls.builtins.formatting.stylua, -- install with Mason 

        -- javascript
        none_ls.builtins.formatting.prettier,
        none_ls.builtins.diagnostics.eslint_d,

        -- php


        -- python
        -- none_ls.builtins.formatting.black,
        -- none_ls.builtins.diagnostics.isort


      },
    })
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}
