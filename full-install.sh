if [ -d "$HOME/nano-highlight" ]; then
  echo "nano-highlight folder exists, skipping folder setup..."
  cd $HOME/nano-highlight
else
  echo -n "Setting up highlighter folder..."
  mkdir $HOME/nano-highlight
  cd $HOME/nano-highlight
  wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/README-installed-full -O README -q
  echo " Done!"
fi
if [ -f "$HOME/.nanorc" ] then
  echo "Skipping nanorc setup"
else
  echo "Installing highlighters..."
  echo 'include "~/nano-highlight/.*.nanorc"' >> $HOME/.nanorc
fi
echo "Downloading highlighters..."
echo -n "- Dart"
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc -q
echo " ✓"
if [ -f "$HOME/nano-highlight/README" ]
then
cat README
rm README
fi
