#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 1
#let anexo = "A"
#let fecha_entrega = datetime(year: 2026, month: 9, day: 27)
#let nombre = "Uso de la IA"
#let bibliografia = none


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Script de compilación automática

  Se usó la IA para la creación del script `build.sh` que sirve para organizar el repositorio. El objetivo de este script era tener una manera cómoda, rápida y uniforme de compilar los archivos de `Typst` del repositorio.

  Para ello se hizo uso del agente de código _Pi_ con el modelo _DeepSeek V4.1 Flash_.

  #h4[Prompt:]
  #pretty_box[
    ```
     I need a simple script that goes to every folder sprint<N> and compiles a pdf from main with the name Sprint <N> - <Title>.pdf

    ```
  ]

  #h4[Salida:]
  #pretty_box[
    Works. `build.sh` at the repo root:

    ```bash
      #!/usr/bin/env bash
      set -euo pipefail
      cd "$(dirname "$0")"

      if [ "$#" -gt 0 ]; then dirs=("$@"); else shopt -s nullglob; dirs=(sprint*/); fi

      for dir in "${dirs[@]}"; do
        [ -d "$dir" ] || continue
        dir="${dir%/}/"
        main="${dir}main.typ"
        [ -f "$main" ] || continue

        n="${dir#sprint}"; n="${n%/}"
        title="$(sed -nE 's/^[[:space:]]*#let[[:space:]]+nombre[[:space:]]*=[[:space:]]*"([^"]*)".*/\1/p' "$main" |
    head -n1)"
        [ -n "$title" ] || title="$(sed -nE 's/.*#portada\("([^"]*)".*/\1/p' "$main" | head -n1)"
        [ -n "$title" ] || title="Sprint ${n}"

        out="${dir}Sprint ${n} - ${title}.pdf"
        echo "==> ${main}  ->  ${out}"
        typst compile --root . "$main" "$out"
      done
    ```

    How it works:
    - Iterates every sprint `<N>` / (or just the folders you pass: `./build.sh sprint1`).
    - Sprint number comes from the folder name (`sprint2 → 2`).
    - Title comes from the `#let nombre = "..." variable`in main.typ, falling back to the portada("...") first arg, then
      the folder name.
    - Runs from any cwd `(cd "$(dirname "$0")")`, uses `--root` . so the shared template/ image resolves.
    - Output: `sprint<N>/Sprint N - <Título>.pdf`.
    Verified: built `sprint1/Sprint 1 - Especificación.pdf`, and a throwaway sprint2 produced `sprint2/Sprint 2 - Diseño.pdf` before cleanup.

    Want me to add `\*.pdf` to `.gitignore` so build artifacts aren't committed?
  ]

  Apartir de este punto se modificó el archivo build eliminando algunas innecesarias y encapsulando la funcionalidad dentro de un función para también permitir compilar anexos de manera automática.

]
