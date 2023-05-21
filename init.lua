
--
-- Set $PATH in Neovim based on the operating system
if package.config:sub(1,1) == "/" then -- Unix-like system
  vim.env.PATH = "/home/domi/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/home/domi/.cargo/bin:" .. vim.env.PATH
  vim.env.PATH = "/home/domi/miniconda3/envs/p2/bin/python:" .. vim.env.PATH
else -- Windows
end

vim.g.python3_host_prog = "/home/domi/miniconda3/envs/p2/bin/python"

require("therosser")
if vim.g.vscode then
    vim.g.mapleader = " "
    vim.g.localleader = ","
    vim.cmd('source $HOME/.config/nvim/vscode/settings.vim')
    vim.cmd('source $HOME/.config/nvim/vscode/plug-config/easymotion.vim')
else
end
