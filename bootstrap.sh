#!/bin/sh

REPO="https://github.com/fmal/choc-config.git"
CHOCOLAT_APP="/Applications/Chocolat.app"
APP_SUPPORT="$HOME/Library/Application Support/Chocolat"

if [ -e "$APP_SUPPORT" ]; then
	read -r -p "$APP_SUPPORT exists, do you want to overwrite? [y/N]" RESPONSE
	if [[ $RESPONSE =~ ^[Yy]$ ]]; then
		rm -Rf "$APP_SUPPORT"
	else
		echo ""
		echo "Aborted bootstrap of $APP_SUPPORT since it already exists."
		exit 1
  	fi
fi

echo ''
echo "Cloning configuration..."

git clone $REPO "$APP_SUPPORT" --recursive --quiet

source "$APP_SUPPORT/set-prefs.sh"