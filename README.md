# nano-highlight

More syntax highlighters for Nano editor.

## Setup

To install or update nano-highlight use this command:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/TylerMS887/nano-highlight/HEAD/full-install.sh)"
```

Or to do a basic install (e.g. highlighters must be installed manually):

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/TylerMS887/nano-highlight/HEAD/install.sh)"
```

## Highlighters

### Dart

This highlighter adds Dart support to nano's highlighter.

![Dart highlighter](https://github.com/TylerMS887/nano-highlight/assets/115214762/36cfb212-6e79-4278-873a-bca8e1eb86cd)

If you done a basic install, paste these commands into your shell to enable Dart highlighting:

```
export PREVIOUS_DIR="$(pwd)"
cd ~/nano-highlight
wget https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc
cd $PREVIOUS_DIR
```

## Add new highlighters

Create a new issue.

Highlighters must not:
* Be for estoric programming languages (who needs those?)
* Contain syntax errors that affect the current Debian version of nano
