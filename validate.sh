function dir_exists {
  if [[ ! -d $webjar_root/$1 ]]; then
    echo "Directory does not exist: $1"
    exit 1
  else
    echo "Directory exists: $1"
  fi
}

function file_exists {
  if [[ ! -f $webjar_root/$1 ]]; then
    echo "File does not exist: $1"
    exit 2
  else
    echo "File exists: $1"
  fi
}

if [[ "" == "$1" ]]; then
  echo "You must specify the webjar root directory."
  exit 3
fi

webjar_root=$1

dir_exists "dist/addon"
dir_exists "dist/keymap"
dir_exists "dist/lib"
dir_exists "dist/mode"
dir_exists "dist/theme"

file_exists "import-map.json"
file_exists "dist/LICENSE"
file_exists "dist/README.md"

echo "=========================="
echo "Validation was successful."
