return {
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "*",
        opts = {
            keymap = {
                preset = "default",

                ["<CR>"] = { "accept", "fallback" },

                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
            },            appearance = { nerd_font_variant = "mono" },

            completion = {
                documentation = { auto_show = true },
            },

            sources = {
                -- no `lsp` source yet; add it back when you set up LSP
                default = { "path", "snippets", "buffer" },
            },

            fuzzy = { implementation = "prefer_rust" },
        },
        opts_extend = { "sources.default" },
    },
}
