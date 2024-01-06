return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false, -- use catppuccin as soon as possible
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
