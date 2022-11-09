local M = {
  setup=function ()
    -- vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
    --   pattern = { '*.vs', '*.fs', '*.vert', '*.frag' },
    --   callback = "set ft=glsl"
    -- })
    vim.api.nvim_command([[autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl]])
  end
}

return M
