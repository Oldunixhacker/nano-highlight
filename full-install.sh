if [ -d "~/nano-highlight" ]
then
echo "nano-highlight folder exists, skipping folder setup..."
else
echo -n "Setting up highlighter folder..."
mkdir ~/nano-highlight
cd ~/nano-highlight
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/README-installed-full -O README -q
echo " Done!"
fi
echo "Downloading highlighters..."
echo -n "- Dart"
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc -q
echo " ✓"
echo "Installing highlighters..."
echo 'include "~/nano-highlight/.*.nanorc"' >> ~/.nanorc
if [ -f "~/nano-highlight/README" ]
then
cat README
rm README
fi
