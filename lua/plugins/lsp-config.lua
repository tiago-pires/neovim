return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"html",
				"intelephense",
				"lua_ls",
				"marksman",
				"tailwindcss",
				"tsserver",
				-- [[ TODO install manually, not valid in `ensure_installed`:
				-- "prettier",
				-- "eslint_d",
				-- "stylua"
				-- ]]
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			local capabalities = require("cmp_nvim_lsp").default_capabilities() -- add lsp to cmp

			-- setup lua_ls
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.html.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.intelephense.setup({})

			-- lang servers keybindings
			local opts = {}
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<leader>;", vim.lsp.buf.format, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		end,
	},
}
