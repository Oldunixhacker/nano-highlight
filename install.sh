if [ -d "$HOME/nano-highlight" ]; then
  echo "nano-highlight folder exists, exiting setup..."
else
  echo -n "Setting up highlighter folder..."
  mkdir $HOME/nano-highlight
  cd $HOME/nano-highlight
  wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/README-installed -O README -q
  echo " Done!"
  echo "Enabling highlighters..."
  echo 'include "$HOME/nano-highlight/.*.nanorc"' >> $HOME/.nanorc
  cat README
  rm README
fi
