file_exists "import-map.json"
file_contains "LICENSE" "MIT License"
file_exists "README.md"

file_exists "dist/lib/codemirror.js"
dir_exists "dist/addon"
dir_exists "dist/keymap"
dir_exists "dist/mode"
dir_exists "dist/theme"
