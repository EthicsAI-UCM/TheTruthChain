//   title         -> título del documento (p. ej. "Especificación")
//   sprint        -> número de sprint (p. ej. 1)
//   anexo         -> letra del anexo (p. ej. A)
//   fecha_entrega -> fecha de entrega
#let portada(title, sprint, anexo: none, fecha_entrega: none) = [
  #page(
    margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
  )[
    #align(center)[

      #image("ucm.png", width: 10cm)

      #v(1.5cm)

      #line(length: 100%, stroke: 0.5pt)
      #v(0.4cm)

      #text(size: 22pt, weight: "bold")[
        Sprint #sprint

        #if anexo != none [
          Anexo #anexo: #title
        ] else [
          #title
        ]
      ]

      #v(0.3cm)

      #text(size: 13pt, style: "italic")[
        Ética de Datos e IA
      ]

      #v(0.4cm)
      #line(length: 100%, stroke: 0.5pt)

      #v(1.5cm)

      #text(size: 11pt)[
        #grid(
          columns: 1,
          row-gutter: 0.5cm,
          [*Yao Chen*],
          [*Jiahao Cheng*],
          [*Jorge Hernández Palop*],
          [*Alicia Pereda Bordejé*],
          [*Jiayi Wang*],
        )
      ]

      #v(1.0cm)

      #if fecha_entrega != none [
        #text(size: 11pt)[
          #fecha_entrega.display("[day]/[month]/[year]")
        ]
      ]
    ]
  ]

  #pagebreak()
]
