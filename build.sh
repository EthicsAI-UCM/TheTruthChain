#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

shopt -s nullglob
dirs=(sprint*/)

compile_file() {
  local file="$1"

  if [ ! -f "$file" ]; then
    return 1
  fi

  local title sprint anexo
  title="$(sed -nE 's/^[[:space:]]*#let[[:space:]]+nombre[[:space:]]*=[[:space:]]*"([^"]*)".*/\1/p' "$file" | head -n1)"
  sprint="$(sed -nE 's/^[[:space:]]*#let[[:space:]]+sprint[[:space:]]*=[[:space:]]*([0-9]+).*/\1/p' "$file" | head -n1)"
  anexo="$(sed -nE 's/^[[:space:]]*#let[[:space:]]+anexo[[:space:]]*=[[:space:]]*"([^"]*)".*/\1/p' "$file" | head -n1)"

  if [ -z "$title" ]; then
    echo "==> ${file}  ->  Couldn't find variable 'nombre'" >&2
    return 1
  fi

  if [ -z "$sprint" ]; then
    echo "==> ${file}  ->  Couldn't find variable 'sprint'" >&2
    return 1
  fi

  local out
  if [ -z "$anexo" ]; then
    out="docs/Sprint ${sprint} - ${title}.pdf"
  else
    out="docs/Sprint ${sprint}${anexo} - ${title}.pdf"
  fi

  mkdir -p "docs"
  typst compile --root . "$file" "$out"
  echo "==> ${file}  ->  ${out}"
}

for dir in "${dirs[@]}"; do
  [ -d "$dir" ] || continue

  dir="${dir%/}/"
  main="${dir}main.typ"

  compile_file "$main"

  anexos=("${dir}"anexo*.typ)
  for anexo in "${anexos[@]}"; do
    compile_file "$anexo"
  done
done

echo "Listo."
