return {
	{
		"olexsmir/gopher.nvim",
		ft = "go",
		config = function(opts)
			require("gopher").setup(opts)
			local gopherKeymaps = vim.keymap
			gopherKeymaps.set("n", "<leader>gsj", "<cmd>GoTagAdd json<cr>", { desc = "Add json struct tags" })
			gopherKeymaps.set("n", "<leader>gsy", "<cmd>GoTagAdd yaml<cr>", { desc = "Add yaml struct tags" })
		end,
		build = function()
			vim.cmd([[silent! GoInstallDeps]])
		end,
	},
}
