# Install Packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Bootstrap everything
mkdir $HOME/.config/nvim 
cp init.lua $HOME/.config/nvim/ 
cp -R colors $HOME/.config/nvim/ 
cp -R lua $HOME/.config/nvim/
cp -R plugin $HOME/.config/nvim/ 
