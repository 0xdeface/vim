require('plugins')
require('options')
require('keymap')
vim.cmd([[
autocmd VimEnter,VimLeave * silent !tmux set status
]])
vim.cmd.colorscheme "catppuccin"
