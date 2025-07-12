-- Custom keybindings
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Exit Insert mode with Ctrl + alt + {any key}
keymap('i', '<C-M>', '<Esc>', opts)
