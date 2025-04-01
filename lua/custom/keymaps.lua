-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- This switches to the previous buffer before closing the current buffer, to preserve splits when a buffer is closed.
vim.keymap.set('n', '<leader>x', '<cmd>bp|bd #<CR>', { desc = 'Close current buffer' })

-- Split shortcuts
vim.keymap.set('n', '<leader>|', '<cmd>vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '<leader>_', '<cmd>split<CR>', { desc = 'Horizontal split' })

-- Improve navigation to work on visual lines instead of actual lines
vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })
vim.keymap.set('n', '0', 'g0', { noremap = true })
vim.keymap.set('n', '$', 'g$', { noremap = true })

-- Switch buffers with Tab/Shift-Tab
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<CR>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>x', '<cmd>bdelete<CR>', { desc = 'Close current buffer' })

-- Copy the relative path of the file that's currently open to clipboard
vim.keymap.set('n', '<leader>y', '<cmd>let @+=@%<CR>', { desc = 'Copy file path to clipboard' })

-- Smart Tab - use tabs for indentation, spaces for alignment
-- local function smart_tab()
--   local col = vim.fn.col '.'
--   local current_line = vim.fn.getline '.'
--   local line_before_cursor = string.sub(current_line, 1, col - 1)
--
--   if col == 1 or string.match(line_before_cursor, '^%s+$') then
--     return vim.api.nvim_replace_termcodes('<Tab>', true, false, true)
--   else
--     local spaces_needed = vim.opt.softtabstop:get() - ((vim.fn.virtcol '.' - 1) % vim.opt.softtabstop:get())
--     return string.rep(' ', spaces_needed)
--   end
-- end
--
-- vim.keymap.set('i', '<Tab>', smart_tab, { expr = true, silent = true })
