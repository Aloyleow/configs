vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

-- open terminal
map("n", "<leader>t", function()
  vim.cmd("8sp | term")
end)

map("t", "<leader><Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Formatting files
map({ "n", "v" }, "<leader>f", function()
  require("conform").format()
end, { desc = "Format file" })

-- GitLens/Blamer
map("n", "<leader>b", function()
  vim.cmd("BlamerToggle")
end)
