#!/usr/bin/env sh

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"



#-----------------------------------------------------------
#- ZSH

# Delete .zshrc if there is one in ~/:
rm -rf $HOME/.zshrc
# Create symlink to .zshrc in /.dotfiles:
ln -sf $DOTFILES/zsh/.zshrc $HOME/.zshrc

# Delete .zsh_aliases if there is one in ~/:
rm -rf $HOME/.zsh_aliases
# Create symlink to .zsh_aliases in /.dotfiles:
ln -s $DOTFILES/zsh/.zsh_aliases $HOME/.zsh_aliases

# Delete mannydark theme in oh-my-zsh directory:
rm -rf $HOME/.oh-my-zsh/themes/mannydark.zsh-theme
# Create symlink to mannydark theme in /.dotfiles/zsh:
ln -s $DOTFILES/zsh/mannydark.zsh-theme $HOME/.oh-my-zsh/themes/mannydark.zsh-theme



#rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#mkdir ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/
#ln -s /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#ln -s /opt/homebrew/Cellar/zsh-autosuggestions/zsh-autosuggestions.zsh ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#-----------------------------------------------------------
#- Neovim

# Delete nvim directory if there is one in ~/.config:
rm -rf $HOME/.config/nvim
# Create symlink to nvim directory in /.dotfiles:
ln -s $DOTFILES/nvim $HOME/.config/nvim


#-----------------------------------------------------------
#- Kitty

# Delete ~/.config/kitty directory:
rm -rf $HOME/.config/kitty

# Create symlink to ~/.dotfiles/kitty:
ln -s $DOTFILES/kitty $HOME/.config/kitty


#-----------------------------------------------------------
#- Git

# Delete .gitconfig if there is one in ~/:
rm -rf $HOME/.gitconfig

# Create symlink to ~/.dotfiles/git/.gitconfig:
ln -s $DOTFILES/git/.gitconfig $HOME/.gitconfig

# Delete ~/.gitignore_global:
rm -rf $HOME/.gitignore_global

# Create symlink to ~/.dotfiles/git/.gitignore_global:
ln -s $DOTFILES/git/.gitignore_global $HOME/.gitignore_global


#-----------------------------------------------------------
#- PhpStorm

# Delete ~/.ideavimrc:
rm -rf $HOME/.ideavimrc

# Create symlink to ~/.dotfiles/phpstorm/.ideavimrc:
ln -s $DOTFILES/phpstorm/.ideavimrc $HOME/.ideavimrc


