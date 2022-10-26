lvim.plugins = {
  {
    -- clangd_extensions.nvim:
    "p00f/clangd_extensions.nvim",
    config = require('user.clangd').setup,
    -- defered loaded
    ft = { 'c', 'cpp', 'hpp', 'h', 'cu', 'cc', 'cxx' }
  },
  {
    -- trouble.nvim 
    "folke/trouble.nvim",
    config = require('user.trouble').setup,
  },
  {
    -- lsp_signature
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require"lsp_signature".on_attach() end,
  },
  {
    -- symbols-outline
    "simrat39/symbols-outline.nvim",
    config = require('user.symbols-outline').setup
  },

}
