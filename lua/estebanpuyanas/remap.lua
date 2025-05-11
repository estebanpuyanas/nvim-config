vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 
vim.keymap.set("n", "<leader>tt", ":split | terminal<CR>", { desc = "Horizontal terminal" })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
