return {
  'mfussenegger/nvim-dap',
  config = function()
    local dap = require('dap')

    dap.adapters.node2 = {
      type = 'executable',
      command = 'node',
      args = { os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js' },
    }
    dap.configurations.javascript = {
      {
        name = 'Launch',
        type = 'node2',
        request = 'launch',
        program = '${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        console = 'integratedTerminal',
      },
      {
        -- For this to work you need to make sure the node process is started with the `--inspect` flag.
        name = 'Attach to process',
        type = 'node2',
        request = 'attach',
        processId = require 'dap.utils'.pick_process,
      },
      {
        name = 'Docker: Attach to Node',
        type = 'node2',
        request = 'attach',
        restart = true,
        address = 'localhost',
        port = 9229,
        localRoot = '${workspaceFolder}',
        remoteRoot = '/usr/src/app',
        protocol = 'inspector',
      },
    }

    vim.keymap.set('n', '<F1>', function() require('dap').continue() end)
    vim.keymap.set('n', '<F2>', function() require('dap').step_over() end)
    vim.keymap.set('n', '<F3>', function() require('dap').step_into() end)
    vim.keymap.set('n', '<F4>', function() require('dap').step_out() end)
    vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
    vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
  end
}
