vim.g.mapleader=" "
vim.wo.number = true
vim.api.nvim_set_hl(0, 'LineNr', { fg='yellow', bold=true })
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('n', '<c-t>', ':ToggleTerm direction=float<CR>')
vim.api.nvim_set_keymap('n', '<leader>cp', [[:e new_cpp_file.cpp<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<c-b>', ":!g++ -O2 -std=c++17 % -o %:t:r && ./%:t:r < input.txt > output.txt<CR>")
vim.keymap.set('n', '<leader>l', ":!pdflatex %:t:r && bibtex %:t:r && pdflatex %:t:r && pdflatex %:t:r<CR>")
vim.keymap.set('n', '<leader>f', ":vsp output.txt | wincmd L | vertical resize 55 | sp input.txt<CR>")
