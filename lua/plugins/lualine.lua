return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	config = function()
		-- Add tab number to lualine
		local function num()
			return tostring(vim.fn.tabpagenr())
		end
		require("lualine").setup({ sections = { lualine_a = { num } } })
	end,
	opts = {
		theme = "dracula",
	},
}
