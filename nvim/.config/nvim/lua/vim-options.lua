vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.background = "light"
vim.opt.swapfile = false
vim.opt.showmode = false
vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.laststatus = 3

vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.autoread = true
vim.opt.termguicolors = true
vim.o.background = "dark"
--vim.opt.guicursor = "n-v-c-sm:Cursor,i-ci-ve:ver-137,r-cr-o:hor20"
