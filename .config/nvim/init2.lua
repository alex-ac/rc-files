local dap = require('dap')
local ui = require('dapui')

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/xcrun',
  args = { 'lldb-dap' },
}

dap.configurations = {
  c = {
    {
      name = 'Launch file',
      type = 'lldb',
      request = 'launch',
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      stopAtEntry = false,
      MIMode = 'lldb',
    },
    {
      name = 'Attach to lldbserver :1234',
      type = 'lldb',
      request = 'launch',
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      stopAtEntry = false,
      miDebuggerServerAddress = 'localhost:1234',
      miDebuggerPath = '/usr/bin/lldb',
      MIMode = 'lldb',
    }
  }
}

dap.configurations.cpp = dap.configurations.c
dap.configurations.objcpp = dap.configurations.c

ui.setup({
  icons = {
    expanded = '⏷',
    collapsed = '⏵',
    current_frame = '❯',
  },
  controls = {
    icons = {
      disconnect = '',
      pause = '⏸',
      play = '▶',
      run_last = '',
      step_back = '←',
      step_into = '↴',
      step_out = '↱',
      step_over = '→',
      terminate = '⏻',
    }
  },
})

vim.fn.sign_define("DapBreakpoint", { text = "⏺" })

dap.listeners.before.attach.dapui_config = function()
  ui.open()
end

dap.listeners.before.launch.dapui_config = function()
  ui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  ui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
  ui.close()
end
