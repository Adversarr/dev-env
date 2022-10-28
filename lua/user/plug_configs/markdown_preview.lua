local M = {
  setup = function()
    vim.g.mkdp_filetypes = { "markdown" } 
    vim.g.mkdp_auto_start = 1
    vim.g.mkdp_port = 13241
    vim.g.mkdp_theme = 'dark'
  end
}

return M
