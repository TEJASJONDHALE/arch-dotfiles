return {
    -- ── file explorer ─────────────────────────────────────────────────
    {
        "echasnovski/mini.files",
        version = false,
        config = function()
            require("mini.files").setup({
                windows = { preview = true },
            })

            -- `-` opens explorer rooted at current file's directory
            vim.keymap.set("n", "-", function()
                MiniFiles.open(vim.api.nvim_buf_get_name(0))
            end, { desc = "Open file explorer" })
        end,
    },

    -- ── fuzzy finder ──────────────────────────────────────────────────
    {
        "echasnovski/mini.pick",
        version = false,
        config = function()
            require("mini.pick").setup()

            vim.keymap.set("n", "<leader>ff", MiniPick.builtin.files,      { desc = "Find files" })
            vim.keymap.set("n", "<leader>fg", MiniPick.builtin.grep_live,  { desc = "Live grep" })
            vim.keymap.set("n", "<leader>fb", MiniPick.builtin.buffers,    { desc = "Find buffers" })
            vim.keymap.set("n", "<leader>fh", MiniPick.builtin.help,       { desc = "Find help" })
        end,
    },

    -- ── surround: add/change/delete surrounding pairs ─────────────────
    -- sa{motion}{char}  →  add surround     e.g. saiw" wraps word in "
    -- sd{char}          →  delete surround  e.g. sd" removes "
    -- sr{char}{char}    →  replace surround e.g. sr"' changes " to '
    {
        "echasnovski/mini.surround",
        version = false,
        opts = {
            mappings = {
                add            = "sa",
                delete         = "sd",
                replace        = "sr",
                find           = "sf",
                find_left      = "sF",
                highlight      = "sh",
                update_n_lines = "sn",
            },
        },
    },

    -- ── auto pairs ────────────────────────────────────────────────────
    -- Automatically closes (, [, {, ", ', ` as you type
    {
        "echasnovski/mini.pairs",
        version = false,
        opts = {},
    },

    -- ── treesitter: syntax, indentation, text objects ─────────────────
    -- nvim-treesitter/nvim-treesitter was archived Apr 2026.
    -- neovim-treesitter/nvim-treesitter is the maintained community fork.
    -- It requires Neovim 0.12+ and the tree-sitter CLI (brew/cargo install tree-sitter).
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "neovim-treesitter/treesitter-parser-registry" },
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({
                ensure_installed = {
                    "lua", "python", "javascript", "typescript",
                    "bash", "json", "yaml", "toml", "markdown",
                    "html", "css", "go", "rust",
                },
                auto_install = true,
            })
            -- highlighting and indentation are enabled per-filetype by the plugin
        end,
    },

    -- ── git signs in the gutter ───────────────────────────────────────
    -- ]h / [h  navigate hunks
    -- <leader>hs  stage hunk
    -- <leader>hr  reset hunk
    -- <leader>hp  preview hunk
    -- <leader>hb  blame line
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns
                local map = function(mode, l, r, desc)
                    vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
                end

                map("n", "]h", gs.next_hunk,          "Next hunk")
                map("n", "[h", gs.prev_hunk,          "Prev hunk")
                map("n", "<leader>hs", gs.stage_hunk,  "Stage hunk")
                map("n", "<leader>hr", gs.reset_hunk,  "Reset hunk")
                map("n", "<leader>hp", gs.preview_hunk,"Preview hunk")
                map("n", "<leader>hb", function() gs.blame_line({ full = true }) end, "Blame line")
                map("n", "<leader>hd", gs.diffthis,    "Diff this")
            end,
        },
    },
}
