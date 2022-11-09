lvim.plugins = {
  -- {
  --   -- clangd_extensions.nvim:
  --   "p00f/clangd_extensions.nvim",
  --   config = require('user.plug_configs.clangd').setup,
  --   -- defered loaded
  --   ft = { 'c', 'cpp', 'hpp', 'h', 'cu', 'cc', 'cxx' }
  -- },
  {
    'tikhomirov/vim-glsl',
    config = require('user.plug_configs.glsl').setup
  },
  {
    -- trouble.nvim
    "folke/trouble.nvim",
    config = require('user.plug_configs.trouble').setup,
  },
  {
    -- lsp_signature
    "ray-x/lsp_signature.nvim",
    -- opt = true,
    config = require("user.plug_configs.lsp_signature").setup
  },
  {
    -- symbols-outline
    "simrat39/symbols-outline.nvim",
    config = require('user.plug_configs.symbols_outline').setup
  },
  {
    'folke/todo-comments.nvim',
    requires = "nvim-lua/plenary.nvim",
    config = require('user.plug_configs.todo_comment').setup,
  },
  {
    -- colorscheme gruvbox
    "ellisonleao/gruvbox.nvim",
    config = require('user.plug_configs.gruvbox').setup
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    config = require('user.plug_configs.markdown_preview').setup
  },
  {
    'lervag/vimtex',
    ft = { 'tex' },
    config = require("user.plug_configs.vimtex").setup,
    require = 'rcarriga/nvim-notify'
  },
  {
    'rcarriga/nvim-notify',
    tag = '*',
    config = require('user.plug_configs.notify').setup
  },
  {
    'preservim/vim-markdown',
    require = 'godlygeek/tabular',
    config = require('user.plug_configs.vim-markdown').setup
  },
}
