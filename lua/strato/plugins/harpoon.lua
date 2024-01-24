return {
	{
		"ThePrimeagen/harpoon",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			-- set keymaps
			local keymap = vim.keymap

			keymap.set(
				"n",
				"<leader>hm",
				"<cmd>lua require('harpoon.mark').add_file()<cr>",
				{ desc = "Mark to Harpoon" }
			)

			keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Next harpoon" })

			keymap.set(
				"n",
				"<leader>hp",
				"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
				{ desc = "Previous harpoon" }
			)
		end,
	},
}
