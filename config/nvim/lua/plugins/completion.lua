return {
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "*",
        opts = {
            keymap = { preset = "default" },
            -- default preset:
            --   <C-space>  trigger completion
            --   <C-e>      hide completion
            --   <C-y>      accept item
            --   <C-p>/<C-n> or <Up>/<Down>  navigate items
            --   <C-b>/<C-f>  scroll docs

            appearance = { nerd_font_variant = "mono" },

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
