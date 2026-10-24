#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "C"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Líneas Rojas"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[

  = Líneas Rojas

  Definimos una serie de *líneas rojas*, límites que TTC no debe cruzar en ningún caso, independientemente de la presión externa, del interés comercial o de la escala que alcance el sistema. Estos límites suponen *prohibiciones estrictas* para proteger los principios que dan sentido al proyecto y la confianza del público al que ofrecemos el servicio.

  == Nunca emitir un veredicto

  La función de TTC es *únicamente la de reunir y ordenar la información* para ayudar a que el usuario saque sus propias conclusiones. TTC *nunca emitirá veredictos*, ni sustituirá el criterio del usuario convirtiéndose en un árbitro de la verdad.

  Para ello, en todo momento se referenciarán las fuentes originales para que el usuario pueda consultarlas, y se dejará claro que TTC es una *herramienta de apoyo*, no una fuente de verdad absoluta.

  == Nunca publicar una afirmación sin una fuente verificable

  Toda la información que aparezca en un informe de TTC debe poder vincularse a una fuente que el usuario pueda consultar. *Si una afirmación no puede vincularse a una fuente, no se publicará*. Esta trazabilidad permite al usuario contrastar la información por sí mismo y a cualquier persona afectada por un informe identificar el origen de un posible error y reclamar. A su vez, facilita al equipo localizar y corregir los errores cuando se reciba una reclamación o se detecte desinformación sobre algún suceso.

  Para ello, cada afirmación enlazará a su fuente original, y todas las referencias se reunirán en la pestaña Fuentes. Si no hay evidencia suficiente, el sistema lo indicará en lugar de completar la información.

  == Nunca alterar una cita ni atribuir a alguien algo que no dijo

  Cuando TTC presenta una cita, esta *debe reproducir exactamente lo que se dijo*, sin modificaciones ni paráfrasis. *Tampoco generará contenido nuevo atribuido a una persona*.

  == Nunca adaptar el contenido al perfil del usuario

  TTC *no personalizará la información* según el usuario, ya sea por su ideología o por cualquier otro rasgo personal. Personalizar el contenido crearía *burbujas informativas* en las que cada persona recibiría su propia versión de los hechos, reforzando así sus sesgos. Solo se permitirá adaptar la experiencia de uso (idioma, accesibilidad, tamaño de letra, etc.), pero no el contenido ni la información.

  == Nunca ceder a presiones externas

  *TTC no retirará fuentes ni cambiará su funcionamiento ante presiones de gobiernos, empresas u otras entidades de poder si no existe una obligación legal*. Cuando sí exista, se cumplirá, pero siempre de forma *transparente para el público*: se indicará en los informes afectados y los cambios quedarán reflejados en informes de transparencia. De este modo se protege la independencia de la ONG y se evita que el sistema se convierta en una herramienta al servicio de intereses particulares.
]
