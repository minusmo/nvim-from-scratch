return {
    "neovim/nvim-lspconfig",
    tag = "v2.11.0",
    event = {"BufReadPre", "BufNewFile"},
    opts = {
        servers = {
            ty = {},
            ruff = {},
            lua_ls = {}
        }
    },
    config = function()
        -- 기존 LSP 서버 setup 코드
        -- require("lspconfig").lua_ls.setup(...)
        -- require("lspconfig").pyright.setup(...)

        local group =
            vim.api.nvim_create_augroup(
            "LspReferenceHighlight",
            {
                clear = true
            }
        )

        vim.api.nvim_create_autocmd(
            "LspAttach",
            {
                group = group,
                callback = function(event)
                    local client = vim.lsp.get_client_by_id(event.data.client_id)

                    if not client or not client.server_capabilities.documentHighlightProvider then
                        return
                    end

                    vim.b[event.buf].minicursorword_disable = true

                    local buffer_group =
                        vim.api.nvim_create_augroup("LspReferenceHighlight_" .. event.buf, {clear = true})

                    vim.api.nvim_create_autocmd(
                        {"CursorHold", "CursorHoldI"},
                        {
                            group = buffer_group,
                            buffer = event.buf,
                            callback = vim.lsp.buf.document_highlight
                        }
                    )

                    vim.api.nvim_create_autocmd(
                        {"CursorMoved", "CursorMovedI"},
                        {
                            group = buffer_group,
                            buffer = event.buf,
                            callback = vim.lsp.buf.clear_references
                        }
                    )
                end
            }
        )

        vim.o.updatetime = 250
    end
}
