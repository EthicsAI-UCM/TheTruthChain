#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "B"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Plausabilidad"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Plausibilidad

  En cuanto a las partes frágiles del proyecto o con más riesgos, encontramos tres: clasificar información real o falsa, la viabilidad económica y la regulación futura sobre la IA. Cada vez se contrasta menos información y esa tendencia sigue en aumento; además, con el auge de la IA generativa fabricar narrativas falsas es cada vez más fácil. Por ello, crear sistemas que puedan realizar una clasificación semi/automática de la información es un reto de ingeniería bastante complicado que no requiere únicamente de informáticos.

  Por otro lado, financiar un proyecto libre que requiere de bastante personal e infraestructura para poder auditar y revisar el sistema de manera correcta no es barato. La situación no mejora si queremos mantenernos imparciales y no ser influenciados por ninguna entidad que pueda ejercer algún tipo de influencia sobre el proyecto. Aunque la legislación vigente no restringe la viabilidad legal de nuestro proyecto, es posible que una futura legislación sobre la IA o el tratamiento de datos lo haga inviable.
]
