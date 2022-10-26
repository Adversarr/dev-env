--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "gruvbox"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false


-- keymap:
require("user.keymap")

-- builtin_config
require("user.builtin_config")

-- lvim_lsp
require("user.lvim_lsp")

-- formater
require("user.formater")

-- Additional Plugins
require("user.plugins")

-- Auto Commands
require("user.auto_commands")