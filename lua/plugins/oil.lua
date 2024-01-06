return {
	"stevearc/oil.nvim",
	opts = {
		columns = {
			"icon",
			-- "size",
			-- "permissions",
			-- "mtime",
		},
		win_options = {
			signcolumn = "yes",
		},
		delete_to_trash = true,
	},
	keys = {
		{ "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
	},
}
