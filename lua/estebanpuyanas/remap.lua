vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 
vim.keymap.set("n", "<leader>tt", ":split | terminal<CR>", { desc = "Horizontal terminal" })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Enter normal mode from insert mode"})
