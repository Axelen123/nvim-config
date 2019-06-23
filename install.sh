curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.config/nvim/dein
rm installer.sh
rustup component add rls rust-analysis rust-src
npm i -g neovim svelte-language-server
pip2 install pynvim
pip3 install pynvim
gem install neovim