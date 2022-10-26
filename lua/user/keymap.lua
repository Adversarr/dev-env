-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- -- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }
lvim.builtin.which_key.mappings['t'] = {
  name = "+Telescope Goto",
  O = { "<cmd> Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
  o = { "<cmd> Telescope lsp_document_symbols<cr>", "Document Symbols" },
  r = { "<cmd> Telescope lsp_references<cr>", "Look up References of symbol" },
  R = { "<cmd> Telescope lsp_incoming_calls<cr>", "Look up Calling of symbol" },
  b = { "<cmd> Telescope buffers<cr>", "Switch between buffers" },
  p = { "<cmd> Telescope find_files<cr>", "Files" },
  P = { "<cmd> Telescope commands<cr>", "Commands" },
  D = { "<cmd> Telescope diagnostics<cr>", "Telescope Diagnostics" },
  d = { "<cmd> Trouble workspace_diagnostics<cr>", "Trouble Workspace Diagnostics" },
  F = { "<cmd> Telescope live_grep<cr>", "Find string in ws" },
}