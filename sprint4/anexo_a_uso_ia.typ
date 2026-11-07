#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 4
#let anexo = "A"
#let fecha_entrega = datetime(year: 2026, month: 11, day: 8)
#let nombre = "Uso de la IA"
#let bibliografia = none


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Uso de la IA en el Sprint 4

  Durante este sprint hemos usado asistentes de lenguaje (LLM) para varias tareas. No han sustituido las decisiones del equipo: han servido para hacer borradores, traducir y adaptar textos, y revisar el estilo. El contenido final lo ha revisado el equipo y las fuentes y licencias se han comprobado a mano.

  = Logos e identidad

  Se usó la IA para la creación de los logos principales, en su versión clara y oscura, los iconos de aplicación y los acrónimos. La propuesta se revisó y se ajustó por el equipo antes de incorporarla al proyecto.

  #h4[Enlace:]
  #pretty_box[
    ```
    https://claude.ai/artifact/7tN1TJjyanu1DdqwoMt92c#page-dcb81aee8d83
    ```
  ]

  = Traducciones y adaptaciones

  La política de seguridad partió de la de _Ruby on Rails_. El modulo ayudó a adaptar la estructura y el equipo se encargó de adaptar las versiones, los canales, los plazos y el alcance a TTC. Algo parecido pasó con el `CONTRIBUTING.md`: se tomamos como referencia el de _Graphify_, el LLM ayudó a adaptar la estructura y decidimos qué invariantes mantener, cómo enfocar las contribuciones de datos y modelos.

]
