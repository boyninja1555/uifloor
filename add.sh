#!/bin/bash
# Adds a component to the project
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <component> <directory>"
  exit 1
fi
COMPONENT=$1
DIRECTORY=$2
if [ ! -d "$DIRECTORY" ]; then
    mkdir -p "$DIRECTORY"
fi
curl -o "$DIRECTORY/$COMPONENT.tsx" "https://raw.githubusercontent.com/boyninja1555/uifloor/main/components/$COMPONENT.tsx"