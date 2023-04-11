vim.keymap.set("n", "<leader>gg", vim.cmd.Git);

-- Git status
vim.keymap.set("n", "<leader>gs", ":G status<CR>");

-- Git fetch
vim.keymap.set("n", "<leader>gf", ":!git fetch<CR><CR>");

-- Git pull
vim.keymap.set("n", "<leader>gu", ":!git pull<CR><CR>");

-- Git commit
vim.keymap.set("n", "<leader>gc", ":G commit<CR>");

-- Git add current file
vim.keymap.set("n", "<leader>ga", ":G add %<CR>");

-- Git add .
vim.keymap.set("n", "<leader>ga.", ":G add .<CR>");

-- Git log
vim.keymap.set("n", "<leader>gl", ":G log<CR>");

-- Git push current branch
vim.keymap.set("n", "<leader>gp", ":!git push<CR>");

-- Git push origin main
vim.keymap.set("n", "<leader>gP", ":!git push -u origin main<CR>");

-- View older version of current file
vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>");

-- Copy current file from github into the buffer
vim.keymap.set("n", "<leader>gr", ":Gread<CR>");
