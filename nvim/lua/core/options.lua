local opt = vim.opt

-- line numbers
opt.number = true
opt.relativenumber = true

-- indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- ui
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.showmode = false        -- statusline handles this
opt.laststatus = 3          -- global statusline

-- splits
opt.splitright = true
opt.splitbelow = true

-- scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- clipboard
opt.clipboard = "unnamedplus"

-- mouse
opt.mouse = ""

-- undo
opt.undofile = true

-- performance
opt.updatetime = 200
opt.timeoutlen = 300

-- invisible chars
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- splits feel natural
opt.inccommand = "split"    -- live preview of :s substitutions
