-- Setup language servers.
--
local cfg = require('lspconfig')
cfg.lua_ls.setup{
    settings = {
      Lua = {
        diagnostics = {
          globals = {'vim'},
      },
    },
  },
}
cfg.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})
cfg.rust_analyzer.setup{}
