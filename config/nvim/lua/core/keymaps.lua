vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

-- ── file ─────────────────────────────────────────────────────────────
map("n", "<leader>w", "<cmd>w<CR>",  { desc = "Save" })
map("n", "<leader>q", "<cmd>q<CR>",  { desc = "Quit" })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Force quit all" })

-- ── clear search highlight ────────────────────────────────────────────
map("n", "<Esc>", "<cmd>noh<CR>")

-- ── window navigation ─────────────────────────────────────────────────
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- ── window resize ─────────────────────────────────────────────────────
map("n", "<C-Up>",    "<cmd>resize +2<CR>")
map("n", "<C-Down>",  "<cmd>resize -2<CR>")
map("n", "<C-Left>",  "<cmd>vertical resize -2<CR>")
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- ── buffer nav ────────────────────────────────────────────────────────
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<CR>",     { desc = "Next buffer" })
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

-- ── move lines ────────────────────────────────────────────────────────
-- in normal mode, moves the current line up/down
map("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
-- in visual mode, moves the selection up/down and re-selects
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- ── indentation: keep visual selection after indent ───────────────────
map("v", "<", "<gv")
map("v", ">", ">gv")

-- ── better paste: don't yank replaced text in visual ─────────────────
-- "_ is the black-hole register; P pastes before and re-selects
map("v", "p", '"_dP')

-- ── yank to end of line (consistent with D and C) ────────────────────
map("n", "Y", "y$")

-- ── center screen after jumps ─────────────────────────────────────────
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n",     "nzzzv")
map("n", "N",     "Nzzzv")

-- ── quickfix list ─────────────────────────────────────────────────────
map("n", "<leader>xo", "<cmd>copen<CR>",  { desc = "Open quickfix" })
map("n", "<leader>xc", "<cmd>cclose<CR>", { desc = "Close quickfix" })
map("n", "]q", "<cmd>cnext<CR>",          { desc = "Next quickfix" })
map("n", "[q", "<cmd>cprev<CR>",          { desc = "Prev quickfix" })

-- ── terminal ──────────────────────────────────────────────────────────
-- open a terminal split; <Esc> exits insert mode inside terminal
map("n", "<leader>t", "<cmd>split | terminal<CR>", { desc = "Open terminal" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal insert mode" })
