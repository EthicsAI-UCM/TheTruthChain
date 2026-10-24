#import "../lib/document.typ": document

#let sprint = 3
#let anexo = none
#let fecha_entrega = datetime(year: 2026, month: 10, day: 25)
#let nombre = "Implicaciones Sociales"
#let bibliografia = path("./biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  #include "riesgos_y_limites.typ"
  #include "canal_reclamacion.typ"
  #include "responsabilidades.typ"
  #include "emergencia.typ"
]
