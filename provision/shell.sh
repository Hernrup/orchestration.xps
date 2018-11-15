#!/usr/bin/env bash
set -e

sudo apt install gnome-terminal

sudo apt install zsh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell || true

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.build/fzf || true
~/.build/fzf/install --all

# Fetch tmux plugin manager
git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm || true

sudo chsh -s /bin/zsh $USER

# Fonts
mkdir -p ~/.local/share/fonts
pushd ~/.local/share/fonts

echo 'DejaVu font'
curl -fLo "DejaVu Sans Mono Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf?raw=true
echo 'Ubuntu mono font'
curl -fLo "Ubuntu Mono derivative Powerline Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf?raw=true
popd
sudo fc-cache -f -v
