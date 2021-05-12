
#!/bin/zsh

rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && echo 'export PATH=$HOME/.brew/bin:$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update

#visual studio code
brew install visual-studio-code --appdir=~/Applications/

echo 'export PATH="$PATH:/Users/sucho/Applications/Visual Studio Code.app/Contents/Resources/app/bin"' >> $HOME/.zshrc

code ./vscode_settings/

echo "setting up brew & vscode in ~/Applications/ is DONE\n"

echo "ssh pubkey for Github\n\n"
cat $HOME/.ssh/id_rsa_github.pub

echo "ssh pubkey for 42 Intra\n\n"
cat $HOME/.ssh/id_rsa_42intra.pub
