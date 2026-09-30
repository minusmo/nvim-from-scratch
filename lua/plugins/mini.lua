return {
  {
    "nvim-mini/mini.nvim",
    version = false,
    config = function()
      -- 텍스트 편집
      require("mini.ai").setup({
        n_lines = 500,
        search_method = "cover_or_next",
      })

      require("mini.surround").setup({
        mappings = {
          add = "sa",
          delete = "sd",
          find = "sf",
          find_left = "sF",
          highlight = "sh",
          replace = "sr",
          update_n_lines = "sn",
        },
      })

      require("mini.comment").setup()

      require("mini.splitjoin").setup({
        mappings = {
          toggle = "gS",
          split = "",
          join = "",
        },
      })

      -- 탐색 및 이동
      require("mini.bracketed").setup()

      require("mini.files").setup({
        windows = {
          preview = true,
          width_focus = 35,
          width_nofocus = 15,
          width_preview = 55,
        },
        options = {
          use_as_default_explorer = false,
        },
      })

      require("mini.pick").setup({
        window = {
          config = {
            border = "rounded",
          },
        },
        mappings = {
            choose = "<CR>",
            choose_in_split = "<C-s>",
            choose_in_vsplit = "<M-v>",
            choose_in_tabpage = "<C-t>",
            paste = "<C-v>",
            move_down = "<C-n>",
            move_up = "<C-p>",
            toggle_preview = "<Tab>",
            stop = "<Esc>",
        }
      })

      require("mini.bufremove").setup()

      -- UI
      require("mini.clue").setup({
        triggers = {
          { mode = "n", keys = "<Leader>" },
          { mode = "x", keys = "<Leader>" },
          { mode = "n", keys = "g" },
          { mode = "x", keys = "g" },
          { mode = "n", keys = "z" },
          { mode = "x", keys = "z" },
          { mode = "n", keys = "<C-w>" },
          { mode = "x", keys = "<C-w>" },
        },
        clues = {
          require("mini.clue").gen_clues.builtin_completion(),
          require("mini.clue").gen_clues.g(),
          require("mini.clue").gen_clues.marks(),
          require("mini.clue").gen_clues.registers(),
          require("mini.clue").gen_clues.windows(),
          require("mini.clue").gen_clues.z(),
        },
        window = {
          delay = 300,
          config = {
            border = "rounded",
          },
        },
      })

      require("mini.indentscope").setup({
        symbol = "│",
        options = {
          try_as_border = true,
        },
      })

      require("mini.statusline").setup({
        use_icons = vim.g.have_nerd_font == true,
        set_vim_settings = true,
      })

      require("mini.icons").setup()
      require("mini.hipatterns").setup()
      require("mini.trailspace").setup()
      require("mini.cursorword").setup()
      require('mini.git').setup()
      require('mini.tabline').setup()
      require('mini.visits').setup()

      -- mini.files
      vim.keymap.set("n", "<leader>e", function()
        MiniFiles.open(vim.api.nvim_buf_get_name(0), true)
      end, { desc = "Explorer: current file" })

      vim.keymap.set("n", "<leader>E", function()
        MiniFiles.open(vim.uv.cwd(), true)
      end, { desc = "Explorer: cwd" })

      -- mini.pick
      vim.keymap.set("n", "<leader>ff", function()
        MiniPick.builtin.files()
      end, { desc = "Find files" })

      vim.keymap.set("n", "<leader>fg", function()
        MiniPick.builtin.grep_live()
      end, { desc = "Live grep" })

      vim.keymap.set("n", "<leader>fb", function()
        MiniPick.builtin.buffers()
      end, { desc = "Find buffers" })

      vim.keymap.set("n", "<leader>fh", function()
        MiniPick.builtin.help()
      end, { desc = "Find help" })

      -- mini.bufremove
      vim.keymap.set("n", "<leader>bd", function()
        MiniBufremove.delete(0, false)
      end, { desc = "Delete buffer" })

      vim.keymap.set("n", "<leader>bD", function()
        MiniBufremove.delete(0, true)
      end, { desc = "Force delete buffer" })
    end,
  },
}
