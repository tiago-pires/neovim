local servers = {
	-- clangd = {},
	-- gopls = {},
	-- pyright = {},
	-- rust_analyzer = {},
	intelephense = {
		stubs = {
			"apache",
			"bcmath",
			"bz2",
			"calendar",
			"com_dotnet",
			"Core",
			"ctype",
			"curl",
			"date",
			"dba",
			"dom",
			"enchant",
			"exif",
			"FFI",
			"fileinfo",
			"filter",
			"fpm",
			"ftp",
			"gd",
			"gettext",
			"gmp",
			"hash",
			"iconv",
			"imap",
			"intl",
			"json",
			"ldap",
			"libxml",
			"mbstring",
			"meta",
			"mysqli",
			"oci8",
			"odbc",
			"openssl",
			"pcntl",
			"pcre",
			"PDO",
			"pdo_ibm",
			"pdo_mysql",
			"pdo_pgsql",
			"pdo_sqlite",
			"pgsql",
			"Phar",
			"posix",
			"pspell",
			"readline",
			"Reflection",
			"session",
			"shmop",
			"SimpleXML",
			"snmp",
			"soap",
			"sockets",
			"sodium",
			"SPL",
			"sqlite3",
			"standard",
			"superglobals",
			"sysvmsg",
			"sysvsem",
			"sysvshm",
			"tidy",
			"tokenizer",
			"xml",
			"xmlreader",
			"xmlrpc",
			"xmlwriter",
			"xsl",
			"Zend OPcache",
			"zip",
			"zlib",
			"wordpress",
			"phpunit",
		},
		diagnostics = { enable = true },
	},
	astro = {},
	cssls = {},
	tailwindcss = {},
	marksman = {},
	tsserver = {},
	html = { filetypes = { "html", "twig", "hbs" } },
	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
			-- NOTE: toggle below to ignore Lua_LS's noisy `missing-fields` warnings
			-- diagnostics = { disable = { 'missing-fields' } },
			diagnostics = { globals = { "vim" } },
		},
	},
}

local on_attach = function(_, bufnr)
	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end

		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

	nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
	nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

	nmap("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
	nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
	nmap("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
	nmap("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
	nmap("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
	nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

	-- See `:help K` for why this keymap
	nmap("K", vim.lsp.buf.hover, "Hover Documentation")
	nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

	-- Lesser used LSP functionality
	nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
	nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
	nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
	nmap("<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, "[W]orkspace [L]ist Folders")

	-- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, { desc = "Format current buffer with LSP" })
end

return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
				ensure_installed = vim.tbl_keys(servers),
			})
			mason_lspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						on_attach = on_attach,
						settings = servers[server_name],
						filetypes = (servers[server_name] or {}).filetypes,
					})
				end,
			})
		end,
	},
	{ "j-hui/fidget.nvim", opts = {} }, -- lsp status
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
	{
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		{
			"L3MON4D3/LuaSnip",
			dependencies = {
				"saadparwaiz1/cmp_luasnip",
				"rafamadriz/friendly-snippets",
			},
		},
		{
			"hrsh7th/nvim-cmp",
			config = function()
				local cmp = require("cmp")

				-- bring luasnip vscode snippets from friendly-snippets for many langs
				require("luasnip.loaders.from_vscode").lazy_load()

				cmp.setup({
					snippet = {
						-- REQUIRED - you must specify a snippet engine
						expand = function(args)
							require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
						end,
					},
					completion = {
						completeopt = "menu,menuone,noinsert",
					},
					window = {
						completion = cmp.config.window.bordered(),
						documentation = cmp.config.window.bordered(),
					},
					mapping = cmp.mapping.preset.insert({
						["<C-n>"] = cmp.mapping.select_next_item(),
						["<C-p>"] = cmp.mapping.select_prev_item(),
						["<C-d>"] = cmp.mapping.scroll_docs(-4),
						["<C-u>"] = cmp.mapping.scroll_docs(4),
						["<C-Space>"] = cmp.mapping.complete({}),
						["<CR>"] = cmp.mapping.confirm({
							behavior = cmp.ConfirmBehavior.Replace,
							select = true,
						}),
					}),
					sources = cmp.config.sources({
						{ name = "nvim_lsp" },
						{ name = "luasnip" }, -- For luasnip users.
						{ name = "buffer" },
					}),
				})

				-- Set configuration for specific filetype.
				cmp.setup.filetype("gitcommit", {
					sources = cmp.config.sources({
						{ name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
					}, {
						{ name = "buffer" },
					}),
				})

				-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline({ "/", "?" }, {
					mapping = cmp.mapping.preset.cmdline(),
					sources = {
						{ name = "buffer" },
					},
				})

				-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline(":", {
					mapping = cmp.mapping.preset.cmdline(),
					sources = cmp.config.sources({
						{ name = "path" },
					}, {
						{ name = "cmdline" },
					}),
				})

				-- Set up lspconfig.
				-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
				-- require("lspconfig")["tsserver"].setup({
				-- 	capabilities = capabilities,
				-- })
				-- require("lspconfig")["intelephense"].setup({
				-- 	capabilities = capabilities,
				-- })
				-- require("lspconfig")["tailwindcss"].setup({
				-- 	capabilities = capabilities,
				-- })
				-- require("lspconfig")["html"].setup({
				-- 	capabilities = capabilities,
				-- })
				-- require("lspconfig")["lua_ls"].setup({
				-- 	capabilities = capabilities,
				-- })
			end,
		},
	},
}
