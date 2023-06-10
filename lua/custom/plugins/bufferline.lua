return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
      options = {
        indicator = {
          icon = "none",
          style = "underline"
        },
      },
    }
  end,
}
