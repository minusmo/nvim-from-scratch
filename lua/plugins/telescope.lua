return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
    		{
      			"<leader>ff",
      			function()
        			require("telescope.builtin").find_files()
      			end,
      			desc = "파일 찾기",
    		},
    		{
      			"<leader>fg",
      			function()
        			require("telescope.builtin").live_grep()
      			end,
      			desc = "프로젝트 전체 검색",
    		},
  	},
}
