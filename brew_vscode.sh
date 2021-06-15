#!/bin/zsh

rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && echo 'export PATH=$HOME/.brew/bin:$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update


#visual studio code
brew install visual-studio-code --appdir=~/Applications/

code --install-extension kube.42header
code --install-extension MariusvanWijk-JoppeKoers.codam-norminette-3
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode.cpptools
code --install-extension vscode-icons-team.vscode-icons
code --install-extension vscodevim.vim

#copy and paster vscode settings
cp ./vscode_settings/settings.json $HOME/Library/Application\ Support/Code/User/
cp ./vscode_settings/keybindings.json $HOME/Library/Application\ Support/Code/User/

echo "setting up brew & vscode in ~/Applications/ is DONE\n"

echo "ssh pubkey for Github\n\n"
cat $HOME/.ssh/id_rsa_github.pub

echo "ssh pubkey for 42 Intra\n\n"
cat $HOME/.ssh/id_rsa_42intra.pub

echo 'export PATH="$PATH:/Users/sucho/Applications/Visual Studio Code.app/Contents/Resources/app/bin"' >> $HOME/.zshrc

# vscode key repeat
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
