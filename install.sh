if [ -d "~/nano-highlight" ]; then
  echo "nano-highlight folder exists, exiting setup..."
else
  echo -n "Setting up highlighter folder..."
  mkdir ~/nano-highlight
  cd ~/nano-highlight
  wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/README-installed-full -O README -q
  echo " Done!"
  echo "Enabling highlighters..."
  echo 'include "~/nano-highlight/.*.nanorc"' >> ~/.nanorc
  cat README
  rm README
fi
