vim.g.go_term_enabled = 1
vim.g.go_term_mode = "split"
vim.g.go_term_height = 13
return {"fatih/vim-go", build=function() vim.cmd("GoInstallBinaries") end}
