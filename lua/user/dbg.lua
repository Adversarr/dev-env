---@diagnostic disable: need-check-nil
local dap = require('dap')
local codelldb_path = vim.fn.stdpath('data') .. '/mason/bin/codelldb'
-- local codelldb_path = '/Users/yangjerry/.vscode/extensions/vadimcn.vscode-lldb-1.8.1/adapter/codelldb'


-- codelldb
dap.adapters.lldb = {
  type = 'server',
  port = "13000",
  executable = {
    -- CHANGE THIS to your path!
    command = codelldb_path,
    args = {"--port", "13000"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}


-- TODO: Debug configurations should be able to get configured according to the .vscode/launch.json
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false, -- This option cannot be true for bugs.
  },
}

dap.set_log_level("TRACE")


dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
