if [ -d "$HOME/nano-highlight" ]; then
  echo "nano-highlight folder exists, skipping folder setup..."
else
  echo -n "Setting up highlighter folder..."
  mkdir $HOME/nano-highlight
  cd $HOME/nano-highlight
  touch .Nano-highlight-exists
  wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/README-installed-full -O README -q
  echo " Done!"
fi
echo "Downloading highlighters [latest version]..."
echo -e -n "\r- Dart"
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc -q
echo -e "\r✓ Dart"
if [ -f "$HOME/.nanorc" ]
then
  mv ~/.nanorc ~/.nanoconf
  echo "Your nano config has been moved to $HOME/.nanoconf."
  echo "Edit that file to add configs besides the loader."
fi
echo "Enabling highlighters..."
echo "include \"$HOME/nano-highlight/.*.nanorc\"" > $HOME/.nanorc
if [ -f "$HOME/nano-highlight/README" ]
then
  echo "include \"$HOME/.nanoconf\"" >> $HOME/.nanorc
fi
if [ -f "$HOME/nano-highlight/README" ]
then
  cat README
  rm README
fi
