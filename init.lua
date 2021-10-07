vim.cmd[[
set termguicolors
]]

require'impatient'.enable_profile()
require('packer_compiled')
require('config')
require('packer').init(
{
    -- Move to lua dir so impatient.nvim can cache it
    compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  }
)
require("plugins")
require("opt")

require("mappings")







