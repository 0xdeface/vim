local opt = vim.opt
opt.hidden = true
-- line number
opt.relativenumber = true
opt.number = true
-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
-- line wrapping
opt.wrap = true -- disable line wrapping
opt.linebreak = true-- line wrapping
-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
-- cursor line
opt.cursorline = true -- highlight the current cursor line
-- appearance
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
opt.modifiable = true

vim.o.encoding='utf-8'
vim.o.fileencoding='utf-8'
opt.syntax='on'
vim.o.filetype='off'
vim.o.mapleader=','
vim.o.shortmess='filnxtToOFc'
vim.o.noswapfile=true
vim.g.mapleader=","
opt.termguicolors = true
opt.wildignore:append({"/tmp/*","*.so","*.swp","*.zip","*.pyc","*.db","*.sqlite","*node_modules/", "*go/pkg/mod/"})
-- auto open tree for types
vim.api.nvim_create_autocmd(
    {
        "BufNewFile",
        "BufRead",
    },
    {
        pattern = "*.go,*.py,*.lua",
        callback = function()
	      local api = require "nvim-tree.api" 
	      api.tree.open()
          vim.api.nvim_win_set_buf(0, 0)
        end
    }
)

