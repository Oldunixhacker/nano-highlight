# nano-highlight

More syntax highlighters for Nano editor.

## Setup

To install nano-highlight use these commands:

```shell
cd ~
mkdir nano-highlight
cd nano-highlight
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/README-installed -O README
cat README
```

Now, install a [highlighter](#highlighters).

## Highlighters

### Dart

This highlighter adds Dart support to nano's highlighter.

![Dart highlighter](https://github.com/TylerMS887/nano-highlight/assets/115214762/36cfb212-6e79-4278-873a-bca8e1eb86cd)

Install the highlighter with these commands:

```shell
export PREVIOUS_DIR="$(pwd)"
cd ~/nano-highlight
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc
echo 'include "~/nano-highlight/.dart.nanorc"' >> ~/.nanorc
cd $PREVIOUS_DIR
```

## Add new highlighters

Create a new issue.

Highlighters must not:
* Be for estoric programming languages (who needs those?)
* Contain syntax errors that affect the current Debian version of nano
