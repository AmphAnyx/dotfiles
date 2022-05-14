-- PRE-PLUGIN CONFIG
vim.opt.termguicolors = true
--REQUIRE
require('plugins')
require('impatient')

--GENERAL POST-PLUGIN CONFIG
-- colorscheme
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.cmd[[colorscheme tokyonight]]


vim.opt.number = true --side numbers
vim.api.nvim_command('set clipboard+=unnamedplus') --clipboard copy

--packer auto compile when plugins.lua changed
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
--KEYBINDING
