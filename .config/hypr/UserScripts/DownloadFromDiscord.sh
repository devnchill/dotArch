#!/bin/bash
mkdir -p /tmp/test
TARGET_DIR="/tmp/test"
RESOURCE_URL=$(wl-paste)

if [ -z "$RESOURCE_URL" ]; then
	echo "Clipboard doesn't contain a valid URL."
	exit 1
fi

RESOURCE_NAME=$(basename "$RESOURCE_URL" | cut -d '?' -f 1)

if [ ! -d "$TARGET_DIR" ]; then
	echo "Directory $TARGET_DIR does not exist."
	exit 1
fi

if [ -f "$TARGET_DIR/$RESOURCE_NAME" ]; then
	echo "Resource already exists in the directory."
else
	echo "Resource not found. Downloading..."
	wget -O "$TARGET_DIR/$RESOURCE_NAME" "$RESOURCE_URL" || curl -o "$TARGET_DIR/$RESOURCE_NAME" "$RESOURCE_URL"
fi
