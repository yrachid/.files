mkdir -p $HOME/.othman853/.dotfiles

cp .zshrc_profile $HOME/.othman853/.dotfiles/.zshrc_profile
cp .zshrc_alias $HOME/.othman853/.dotfiles/.zshrc_alias

rm -f $HOME/.zshrc
touch $HOME/.zshrc

echo "source $HOME/.othman853/.dotfiles/.zshrc_profile" >> $HOME/.zshrc
echo "source $HOME/.othman853/.dotfiles/.zshrc_alias" >> $HOME/.zshrc
