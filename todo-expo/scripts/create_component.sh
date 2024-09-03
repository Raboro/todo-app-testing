#!/bin/bash

if [ -z "$1" ]; then
  echo "Please select component name"
  exit 1
fi

componentName=$1
folderName=components/$componentName

# Überprüfen, ob der Ordner bereits existiert
if [ -d "$folderName" ]; then
  echo "Folder '$componentName' already exists"
else
  mkdir "$folderName"
  echo -e "export function $componentName() {\n}" > "$folderName/$componentName.tsx"
  echo -e "import { describe, it } from '@jest/globals'\n\ndescribe('', () => {\n  it('', () => {})\n})" > "$folderName/$componentName.spec.tsx"
  echo "'$componentName' component was created"
fi
