-- ~/.dotfiles/nvim/lua/user/plugin_options/windows.lua

-- https://github.com/anuvyklack/windows.nvim



------------------------------------------------------------------------------
-- Windows Plugin
------------------------------------------------------------------------------

-- Import Windows plugin with a protected call:
local windows_status_ok, windows = pcall(require, 'windows')
if not windows_status_ok then
  return
end


------------------------------------------------------------
-- Appearance

local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<Leader><Leader>m', cmd 'WindowsMaximize')
--vim.keymap.set('n', '<C-w>_', cmd 'WindowsMaximizeVertically')
--vim.keymap.set('n', '<C-w>|', cmd 'WindowsMaximizeHorizontally')
--vim.keymap.set('n', '<C-w>=', cmd 'WindowsEqualize')

windows.setup{

}

