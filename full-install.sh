echo -n "Setting up highlighter folder..."
mkdir ~/nano-highlight
cd ~/nano-highlight
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/README-installed -O README -q
echo " Done!"
echo "Downloading highlighters..."
echo -n "- Dart"
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc -q
echo " ✓"
echo "Installing highlighters..."
echo 'include "~/nano-highlight/.*.nanorc"' >> ~/.nanorc
cat README
rm README
