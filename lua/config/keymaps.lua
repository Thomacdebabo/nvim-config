-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps her:event
--
vim.keymap.set("n", "<leader>gi", function()
    vim.cmd("LazyGit")
end, { desc = "Open LazyGit" })

vim.keymap.set("n", "<leader>tt", "<C-w>w")
