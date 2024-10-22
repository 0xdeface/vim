vim.g.open_mapping = "<c-t>"
return  {'akinsho/toggleterm.nvim', version = "*", config = function() 
require("toggleterm").setup{
    open_mapping = [[<c-t>]],
    }
end}
