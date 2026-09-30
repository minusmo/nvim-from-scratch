return {
	"ThePrimeagen/refactoring.nvim",
	-- `async.nvim` is only required for Neovim 0.12. If you are using Neovim 0.13, you don't need it
	dependencies = {
		"lewis6991/async.nvim",
	},
	lazy = false,
	config = function()
		local refactoring = require("refactoring")
		local map = vim.keymap.set

		-- Visual mode drops the selection before g@ runs. Reselect when the
		-- operator is waiting for a motion.
		local function operator(make_keys)
			return function()
				local keys = make_keys()
				if keys == "g@" and vim.fn.mode():find("^[vV\22]") then
					return "gv" .. keys
				end
				return keys
			end
		end

		local expr = { expr = true }

		map({ "n", "x" }, "<leader>re", operator(function()
			return refactoring.extract_func()
		end), vim.tbl_extend("force", expr, { desc = "Extract function" }))
		map({ "n", "x" }, "<leader>rE", operator(function()
			return refactoring.extract_func_to_file()
		end), vim.tbl_extend("force", expr, { desc = "Extract function to file" }))
		map({ "n", "x" }, "<leader>rv", operator(function()
			return refactoring.extract_var()
		end), vim.tbl_extend("force", expr, { desc = "Extract variable" }))
		map({ "n", "x" }, "<leader>ri", operator(function()
			return refactoring.inline_var()
		end), vim.tbl_extend("force", expr, { desc = "Inline variable" }))
		map({ "n", "x" }, "<leader>rI", operator(function()
			return refactoring.inline_func()
		end), vim.tbl_extend("force", expr, { desc = "Inline function" }))
		map({ "n", "x" }, "<leader>rs", function()
			refactoring.select_refactor()
		end, { desc = "Select refactor" })

		map("n", "<leader>rd", function()
			return require("refactoring.debug").print_var({ output_location = "below" }) .. "iw"
		end, vim.tbl_extend("force", expr, { desc = "Debug print variable" }))
		map("x", "<leader>rd", operator(function()
			return require("refactoring.debug").print_var({ output_location = "below" })
		end), vim.tbl_extend("force", expr, { desc = "Debug print variable" }))
		map({ "n", "x" }, "<leader>rc", operator(function()
			return require("refactoring.debug").cleanup({ restore_view = true })
		end), vim.tbl_extend("force", expr, { desc = "Clean debug prints" }))
	end,
}
