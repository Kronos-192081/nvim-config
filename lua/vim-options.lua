vim.g.mapleader=" "
vim.wo.number = true
vim.api.nvim_set_hl(0, 'LineNr', { fg='yellow', bold=true })
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=2")

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('n', '<c-t>', ':ToggleTerm direction=float<CR>')
