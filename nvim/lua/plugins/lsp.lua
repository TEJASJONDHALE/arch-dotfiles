return {
    {
        "neovim/nvim-lspconfig",

        dependencies = { "saghen/blink.cmp" },

        config = function()
            -- global defaults for all servers
            vim.lsp.config("*", {
                capabilities = require("blink.cmp").get_lsp_capabilities(),
            })

            -- lua_ls specific settings
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("gopls")

            -- keymaps on attach
            local lsp_augroup = vim.api.nvim_create_augroup("UserLspConfig", {})

            vim.api.nvim_create_autocmd("LspAttach", {
                group = lsp_augroup,
                callback = function(event)
                    local buf = event.buf
                    local map = function(lhs, rhs, desc)
                        vim.keymap.set("n", lhs, rhs, { buffer = buf, desc = desc })
                    end

                    map("K",            vim.lsp.buf.hover,         "Hover docs")
                    map("gd",           vim.lsp.buf.definition,    "Go to definition")
                    map("gr",           vim.lsp.buf.references,    "References")
                    map("gi",           vim.lsp.buf.implementation,"Go to implementation")
                    map("<leader>rn",   vim.lsp.buf.rename,        "Rename symbol")
                    map("<leader>ca",   vim.lsp.buf.code_action,   "Code action")
                    map("<leader>e",    vim.diagnostic.open_float, "Show diagnostic")
                    map("]d", function() vim.diagnostic.jump({ count = 1 })  end, "Next diagnostic")
                    map("[d", function() vim.diagnostic.jump({ count = -1 }) end, "Prev diagnostic")

                    -- auto format on save
                    if vim.bo[buf].filetype == "go" then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = buf,
                            callback = function()
                                vim.lsp.buf.format({ async = false })
                            end,
                        })
                    end
                end, 
            })

            -- diagnostics display
            vim.diagnostic.config({
                virtual_text     = { prefix = "●" },
                signs            = true,
                underline        = true,
                update_in_insert = false,
                severity_sort    = true,
                float            = { border = "rounded", source = true },
            })
        end,
    },
}
