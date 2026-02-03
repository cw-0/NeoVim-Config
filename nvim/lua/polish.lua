-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

vim.keymap.set("t", "<C-x>", [[<C-\><C-n>]], {
  desc = "Exit terminal mode",
})
-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
