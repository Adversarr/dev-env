--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
COLOR_SCHEME = 'tokyonight-night'
if COLOR_SCHEME == 'sonokai' then
  vim.api.nvim_set_var('sonokai_style', 'espresso')
  -- vim.api.nvim_set_var('sonokai_better_performance', 1)
end
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = COLOR_SCHEME
-- lvim.transparent_window = true
-- vim.opt.wrap = true
vim.opt.showtabline=2
vim.api.nvim_set_var('gruvbox_material_background', "hard")
vim.api.nvim_set_option('relativenumber', true)

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false


-- keymap:
require("user.keymap")

-- builtin_config
require("user.builtin_config")

-- lvim_lsp
require("user.lsp")

-- formater
require("user.formater")

-- Additional Plugins
require("user.plugins")


-- Setup Debuggers
require('user.dbg')

-- Auto Commands
require("user.auto_commands")

