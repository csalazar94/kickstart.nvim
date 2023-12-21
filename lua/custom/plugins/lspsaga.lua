return {
  'glepnir/lspsaga.nvim',
  event = 'LspAttach',
  config = function()
    require('lspsaga').setup {
      lightbulb = {
        enable = false,
      },
    }
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP SAGA: ' .. desc
      end

      vim.keymap.set('n', keys, func, { desc = desc })
    end
    nmap('<leader>rn', '<cmd>Lspsaga rename<CR>', '[R]e[n]ame')
    nmap('<leader>ca', '<cmd>Lspsaga code_action<CR>', '[C]ode [A]ction')
    nmap('gd', '<cmd>Lspsaga goto_definition<CR>', '[G]oto [D]efinition')
    nmap('K', '<cmd>Lspsaga hover_doc<CR>', 'Hover Documentation')
    nmap('[d', '<cmd>Lspsaga diagnostic_jump_prev<CR>', 'Go to previous [D]iagnostic message')
    nmap(']d', '<cmd>Lspsaga diagnostic_jump_next<CR>', 'Go to next [D]iagnostic message')
    nmap('<leader>sl', '<cmd>Lspsaga show_line_diagnostics<CR>', 'Show line diagnostics')
    nmap('<leader>sb', '<cmd>Lspsaga show_buf_diagnostics<CR>', 'Show buffer diagnostics')
  end,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
    --Please make sure you install markdown and markdown_inline parser
    { 'nvim-treesitter/nvim-treesitter' },
  },
}
