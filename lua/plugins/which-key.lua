return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- mini.clue shows prefix hints. This opens only from <leader>?.
		triggers = {},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
