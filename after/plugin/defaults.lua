-- relativenumber
vim.opt.relativenumber = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- set gitmoji remap
vim.keymap.set('n', '<leader>se', require('telescope').extensions.gitmoji.gitmoji, { desc = '[S]earch Git [E]moji' })

-- colorscheme
vim.cmd("colorscheme nightfox")
