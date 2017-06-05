mkdir -p $HOME/.othman853/dotfiles/zsh

curl https://raw.githubusercontent.com/othman853/dotfiles/master/zsh/.profile > $HOME/.othman853/dotfiles/zsh/.profile
curl https://raw.githubusercontent.com/othman853/dotfiles/master/zsh/.alias > $HOME/.othman853/dotfiles/zsh/.alias
curl https://raw.githubusercontent.com/othman853/dotfiles/master/zsh/.env > $HOME/.othman853/dotfiles/zsh/.env

rm -f $HOME/.zshrc
touch $HOME/.zshrc

echo "source $HOME/.othman853/dotfiles/zsh/.profile" >> $HOME/.zshrc
echo "source $HOME/.othman853/dotfiles/zsh/.alias" >> $HOME/.zshrc

source $HOME/.zshrc
