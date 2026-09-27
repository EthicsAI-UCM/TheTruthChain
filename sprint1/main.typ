#import "../lib/document.typ": document

#let sprint = 1
#let anexo = none
#let fecha_entrega = datetime(year: 2026, month: 9, day: 27)
#let nombre = "Especificación"
#let bibliografia = path("./biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  #include "integrantes.typ"
  #include "nombre_descripcion.typ"
  #include "agentes.typ"
  #include "uso_ia.typ"
  #include "innovacion.typ"
  #include "riesgos_desafios_eticos.typ"
  #include "organizacion.typ"
]
