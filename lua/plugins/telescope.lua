return {
	"nvim-telescope/telescope.nvim",
	-- mini.pick owns <leader>ff and <leader>fg.
	enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
}
