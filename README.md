# vimi
This is my VIM setup used acrossed all my computers, it uses git submodule to maintain plugin updates

### Prerequisites

- iterm2   (iterm)
- ohmyzsh  (oh my zsh)
- Vim 7.4+ (homebrew)

### Installlation

```
git clone https://github.com/LifeSource/vimi.git  ~/.vim
```

### Symbolic link

```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/zshrc ~/.zshrc
ln -s ~/.vim/eslintrc ~/.eslintrc
ln -s ~/.vim/editorconfig ~/.editorconfig
ln -s ~/.vim/lifesource.zsh-theme ~/.ohmyzsh/themes/lifesource.zsh-theme
```

### Submodule installation
```
1. git submodule init
2. git submodule update
```

### Plugin configuations

#### VimProc
```
1. cd ~/.vim/bundle/vimproc
2. make
3. popd
```

#### Tern
```
1. cd ~/.vim/bundle/tern
2. npm install
```

#### YouCompleteMe
```
1. cd ~/.vim/bundle/YouCompleteMe
2. ./install.py --all
```

