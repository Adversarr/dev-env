local M = {
  setup = function()
    vim.api.nvim_set_var('vim_markdown_math', 1)
    vim.api.nvim_set_var('vim_markdown_frontmatter', 1)
    vim.api.nvim_set_var('vim_markdown_strikethrough', 1)
    vim.api.nvim_set_option('conceallevel', 2)
    vim.api.nvim_set_var('vim_markdown_folding_disabled', 1)
  end
}

return M
