return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local keymap = vim.keymap
			keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
			vim.api.nvim_set_keymap(
				"n",
				"<leader>dus",
				[[<cmd>lua require("dap.ui.widgets").sidebar(require("dap.ui.widgets").scopes).open()<CR>]],
				{ noremap = true, silent = true }
			)
		end,
	},
	-- adding nvim-dap-go
	{
		"leoluz/nvim-dap-go",
		ft = "go",
		dependencies = "mfussenegger/nvim-dap",
		config = function(opts)
			require("dap-go").setup(opts)

			local dapGoKeymap = vim.keymap
			dapGoKeymap.set(
				"n",
				"<leader>dgt",
				"<cmd>lua require('dap-go').debug_test()<cr>",
				{ desc = "Debug go test" }
			)

			dapGoKeymap.set(
				"n",
				"<leader>dgl",
				"<cmd>lua require('dap-go').debug_last_test()<cr>",
				{ desc = "Debug last go test" }
			)
		end,
	},
}
