vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.smartindent = false
vim.wo.number = true
vim.diagnostic.config({ virtual_text = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>o', '<C-w><C-w>', {})
