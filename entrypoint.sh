#!/usr/bin/env bash

FILES="${@:1}"

# Embed files
echo "Embedding files: $FILES"
npx embedme "$FILES" --verify
