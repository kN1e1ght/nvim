vim.cmd[[
set termguicolors
]]
require('packer').init(
{
    -- Move to lua dir so impatient.nvim can cache it
    compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  }
)
require('impatient')
require("opt")

require("mappings")

require("plugins")






