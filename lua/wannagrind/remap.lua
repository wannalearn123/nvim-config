vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>l", vim.cmd.La)
vim.keymap.set("n", "q", vim.cmd.q)
vim.keymap.set("n", "<leader>m", vim.cmd.Mason)
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>pg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>pb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<C-s>", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
vim.keymap.set("n", "<C-c>", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
vim.keymap.set("n", "<C-f>", "<cmd>Telescope git_files<cr>", { desc = "Find todos" })
vim.keymap.set("n", "<C-g>", vim.cmd.Git)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
