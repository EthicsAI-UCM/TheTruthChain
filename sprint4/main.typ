#import "../lib/document.typ": document

#let sprint = 4
#let anexo = none
#let fecha_entrega = datetime(year: 2026, month: 11, day: 8)
#let nombre = "Propiedad intelectual"
#let bibliografia = path("./biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  #include "intro.typ"
  #include "licencia_resumen.typ"
  #include "marca_naming.typ"
  #include "reclamaciones.typ"
  #include "comunidad.typ"
]
