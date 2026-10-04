#import "../lib/document.typ": document

#let sprint = 2
#let anexo = none
#let fecha_entrega = datetime(year: 2026, month: 10, day: 11)
#let nombre = "Desafios AI"
#let bibliografia = path("./biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  #include "posturas.typ"
]
