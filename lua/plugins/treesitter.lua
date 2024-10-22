return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"bash",
				"c",
				"cmake",
				"cpp",
				"css",
				"go",
				"gomod",
				"gosum",
				"html",
				"javascript",
				"json",
				"lua",
				"php",
				"sql",
				"vim",
				"vimdoc",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
