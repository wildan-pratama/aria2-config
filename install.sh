#!/bin/sh
# Replace specific text in a file with your $HOME path

cp -r ./aria2 $HOME/.config
cp -r ./systemd $HOME/.config

ARIA2_CONFIG="$HOME/.config/aria2/aria2.conf"
ARIA2_USER="$HOME/.config/systemd/user/aria2.service"
PLACEHOLDER="/home/xyz"

if [ -z "$ARIA2_CONFIG" ] || [ -z "$PLACEHOLDER" ]; then
    echo "Usage: $0 <file> <placeholder>"
    exit 1
fi

if [ -z "$ARIA2_USER" ] || [ -z "$PLACEHOLDER" ]; then
    echo "Usage: $0 <file> <placeholder>"
    exit 1
fi
# Escape slashes in $HOME for sed
ESCAPED_HOME=$(printf '%s\n' "$HOME" | sed 's/[\/&]/\\&/g')

# Replace placeholder with $HOME
sed -i "s|$PLACEHOLDER|$ESCAPED_HOME|g" "$ARIA2_CONFIG"
sed -i "s|$PLACEHOLDER|$ESCAPED_HOME|g" "$ARIA2_USER"

touch $HOME/.config/aria2/aria2.log
touch $HOME/.config/aria2/aria2.session
