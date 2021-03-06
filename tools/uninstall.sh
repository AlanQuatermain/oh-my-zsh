echo "Removing ~/.oh-my-zsh"
if [[ -d ~/.oh-my-zsh ]]
then
  rm -rf ~/.oh-my-zsh
fi

echo "Looking for an existing zsh config..."
if [ -f ~/.zshrc.pre-oh-my-zsh ] || [ -h ~/.zshrc.pre-oh-my-zsh ]
then
  echo "Found ~/.zshrc. Backing up to ~/.zshrc.pre-oh-my-zsh";
  rm ~/.zshrc;
  cp ~/.zshrc.pre-oh-my-zsh ~/.zshrc;
  source ~/.zshrc;
else
  echo "Switching back to bash"
  chsh -s /bin/bash
  source /etc/profile
fi

echo "Thanks for trying out Oh My Zsh. It's been uninstalled."