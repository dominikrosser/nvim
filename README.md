# nvim
Nvim, to be used in wsl (but works in windows as well). Most code copied from others.
Copy the files in folder { windows: "powershell_utils", wsl: "external_copy_files" } to their respective locations.
- git clone https://github.com/dominikrosser/nvim ~/.config/nvim
- sudo apt-get install zsh
- chsh -s $(which zsh)
- sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- sudo add-apt-repository ppa:neovim-ppa/unstable
- sudo apt-get update
- sudo apt-get install neovim
- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 - sudo apt-get install build-essential
 - sudo apt-get install lua5.3
- sudo apt-get install fontconfig
- wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
- sudo apt-get install unzip
- unzip FiraCode.zip -d FiraCode
- sudo mkdir /usr/share/fonts/truetype/FiraCode
- sudo cp FiraCode/*.ttf /usr/share/fonts/truetype/FiraCode/
- sudo fc-cache -fv
- sudo apt install tmux
- curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
- update zsh for zoxide
- git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
- sudo apt install nodejs
- sudo apt install npm
- sudo npm cache clean -f
- sudo npm install -g n
- sudo n latest
- sudo apt install libssl-dev pkg-config

## Setup python managed by miniconda on WSL
- wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
- bash Miniconda3-latest-Linux-x86_64.sh


## Also setup VSCodium:
- winget install vscodium
- Then install plugin VSCode Neovim made by asvetliakov in VSCodium
- Configure the plugin settings for VSCode Neovim
- Install plugin Which Key by VSpaceCode in VSCodium
