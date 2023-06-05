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

```shell
export PREVIOUS_DIR="$(pwd)"
cd ~/nano-highlight
wget -q https://raw.githubusercontent.com/TylerMS887/nano-highlight/main/.dart.nanorc
cd $PREVIOUS_DIR
```

## Add new highlighters

### To the nano-highlight repo

[Create a new issue](https://tinyurl.com/nano-highlight-new-lingua).

Highlighters must not be for esoteric programming languages. (Who needs those?)

### To your setup

Run the following command: `nano ~/nano-highlight/.lingua-name.nanorc`

> **Note** for confused users: Replace *lingua-name* with the name of the language.
