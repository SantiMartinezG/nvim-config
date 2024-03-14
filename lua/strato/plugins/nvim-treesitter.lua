return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"php",
					"javascript",
					"html",
					"css",
					"scss",
					"graphql",
					"sql",
					"svelte",
					"go",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
