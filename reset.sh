#!/bin/zsh

# vimrc
cp ./vimrc.txt ~/.vimrc

# ssh-keygen
echo "REMINDER: install fonts before setting up powerlevel10k\n"

open ./fonts

mkdir $HOME/.ssh
ssh-keygen -t rsa -C "to.sungyongcho@gmail.com" -f "/Users/sucho/.ssh/id_rsa_github"
ssh-keygen -t rsa -C "sucho@student.42seoul.kr" -f "/Users/sucho/.ssh/id_rsa_github"

cp ./ssh_config.txt $HOME/.ssh/config

eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa_42intra && ssh-add ~/.ssh/id_rsa_github

rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && echo 'export PATH=$HOME/.brew/bin:$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update

export PATH="$PATH:/Users/sucho/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh-syntax-highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .zsh-syntax-highlighting
echo "source ${(q-)PWD}/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

#powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sed -i 's#robbyrussell#powerlevel10k/powerlevel10k#g' $HOME/.zshrc

echo "REMINDER: install fonts before setting up powerlevel10k\n"

echo "LOGOUT AND COME BACK\n"

alias maclogout="osascript -e 'tell application \"System Events\" to log out'" && sleep 3; maclogout