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
echo -n "- Dart"
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc -q
echo " ✓"
if [ [ ! -z $(grep "include \"$HOME/nano-highlight/.*.nanorc\"" "$HOME/.nanorc") ] ] then
  echo "nano-highlight loader is in the nanorc file, leaving nanorc alone..."
else
  echo "Enabling highlighters..."
  echo "include \"$HOME/nano-highlight/.*.nanorc\"" >> $HOME/.nanorc
fi
if [ -f "$HOME/nano-highlight/README" ]
then
cat README
rm README
fi
