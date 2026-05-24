return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = { transparent = true },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme("tokyonight-moon")
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        end,
    },

    {
        "echasnovski/mini.statusline",
        version = false,
        config = function()
            require("mini.statusline").setup({
                use_icons = true,
            })
        end,
    },
}
