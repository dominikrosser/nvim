require("therosser")
--
-- Set $PATH in Neovim based on the operating system
if package.config:sub(1,1) == "/" then -- Unix-like system
  vim.env.PATH = "/home/username/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/home/username/.cargo/bin:" .. vim.env.PATH
else -- Windows
end
