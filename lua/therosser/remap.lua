vim.g.mapleader = " "
vim.g.localleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- To move between windows use <leader>w followed by hjkl
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wh", "<C-w>h")

-- Use <leader>q to quit and <leader>w to save
vim.keymap.set("n", "<leader>Q", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>wQ', ':w<CR>:Ex<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', {noremap = true, silent = true})
 
-- Highlight move lines up/down (super useful)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Press J in normal mode to let the line below come to you (try it)
vim.keymap.set("v", "J", "mzJ`z")
-- Half page jumping but better (cursor stays in middle)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep search terms in the middle as well
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Greatest remap ever (press " "p to paste so that the buffer isnt lost)
vim.keymap.set("x", "<leader>p", "\"_dP")

-- asbjornHaland use leader y to copy to the actual clipboard
if package.config:sub(1,1) == "/" then -- Unix-like system (WSL!)
    --vim.keymap.set("n", "<leader>y", "\"+y :'<,'>w !clip.exe<CR>")
    --vim.keymap.set("v", "<leader>y", "\"+y :'<,'>w !clip.exe<CR>")
    --vim.keymap.set("n", "<leader>Y", "\"+Y :'<,'>w !clip.exe<CR>")
    vim.keymap.set("n", "<leader>y", "\"+y")
    vim.keymap.set("v", "<leader>y", "\"+y")
    vim.keymap.set("n", "<leader>Y", "\"+Y")
else -- Windows
    vim.keymap.set("n", "<leader>y", "\"+y")
    vim.keymap.set("v", "<leader>y", "\"+y")
    vim.keymap.set("n", "<leader>Y", "\"+Y")
end

-- press " "d to delete without messing up the paste buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.cmd([[nnoremap <C-f> :silent !tmux neww tmux-sessionizer<CR>]]) -- no clue if this works actually
vim.keymap.set("n", "<leader>f",
function()
	vim.lsp.buf.format()
end)

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Press " "s to replace the current word and all its occurences
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- not used make bash files executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
