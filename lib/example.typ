#let sprint = 0
#let fecha_entrega = datetime(year: 2026, month: 9, day: 27)
#let nombre = "Template"

#import "../lib/document.typ": document

#document(sprint: sprint, nombre: nombre, fecha_entrega: fecha_entrega, bibliografia: path("biblio.bib"))[

  = Hi
  Hello this is an example

]

