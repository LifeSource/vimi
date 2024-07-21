# vimi
This is my VIM setup used acrossed all my computers, it uses git submodule to maintain plugin updates

### Prerequisites

- iterm2   (iterm)
- ohmyzsh  (oh my zsh)
- Vim 7.4+ (homebrew)

### Installlation

Download the following theme file `lifesource.zsh-theme` to your local oh-my-zsh theme folder first.

```
git clone https://github.com/LifeSource/vimi.git  ~/.vim
```

### Symbolic link

```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/zshrc ~/.zshrc
ln -s ~/.vim/gitgnore_global ~/.gitignore_global
ln -s ~/.vim/eslintrc ~/.eslintrc
ln -s ~/.vim/editorconfig ~/.editorconfig
ln -s ~/.vim/lifesource.zsh-theme ~/.oh-my-zsh/themes/lifesource.zsh-theme
```

### Javascript snippets links
```
ln -s ~/.vim/snippets/js.snippets ~/.vim/bundle/snippets/snippets/javascript/js.snippets
ln -s ~/.vim/snippets/node.snippets ~/.vim/bundle/snippets/snippets/javascript/node.snippets
ln -s ~/.vim/snippets/react.snippets ~/.vim/bundle/snippets/snippets/javascript/react.snippets
ln -s ~/.vim/snippets/testing.snippets ~/.vim/bundle/snippets/snippets/javascript/testing.snippets
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
2. git submodule update --init --recursive
3. ./install.py --all
```

