return {
  'yamatsum/nvim-cursorline',
  config = function()
    require('nvim-cursorline').setup {
      cursorline = {
        timeout = 300,
        number = true,
      },
    }
  end
}
