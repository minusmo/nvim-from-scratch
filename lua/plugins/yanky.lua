return {
    "gbprod/yanky.nvim",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        vim.opt.clipboard = "unnamedplus"
        require("yanky").setup({
            system_clipboard = {
                sync_with_ring = true,
                clipboard_register = "+",
            },
        })
        vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
        vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
        vim.keymap.set({ "n", "x" }, "<c-n>", "<Plug>(YankyCycleForward)")
        vim.keymap.set({ "n", "x" }, "<c-p>", "<Plug>(YankyCycleBackward)")
    end,
}
