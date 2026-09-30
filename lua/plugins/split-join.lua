return {
	"Wansmer/treesj",
	keys = {
		{
			"gS",
			function()
				require("treesj").toggle()
			end,
			desc = "Split/join",
		},
	},
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("treesj").setup({
			use_default_keymaps = false,
		})
	end,
}
