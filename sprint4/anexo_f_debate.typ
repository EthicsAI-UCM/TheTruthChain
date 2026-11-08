#import "../lib/document.typ": document

#let sprint = 4
#let anexo = "F"
#let fecha_entrega = datetime(year: 2026, month: 11, day: 8)
#let nombre = "Debate"
#let bibliografia = path("biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Debate
  En este anexo, analizamos algunos temas que se trataron en el debate y explicamos las decisiones tomadas tras él.
  
  == Riesgos y líneas rojas

  En el debate se señaló una posible contradicción: una de nuestras líneas rojas es no atribuir nunca a nadie una cita falsa, pero en la tabla de riesgos incluimos la posibilidad de que esto ocurra y es alta. 
  
  No hay contradicción. Una línea roja es un compromiso de diseño, algo que TTC nunca hará de forma intencionada. Un riesgo es la posibilidad de que, pese a ese compromiso, el sistema falle sin intención, por ejemplo porque un modelo de IA genere una cita inexistente o una transcripción asigne mal una frase. 
  
  Declarar el riesgo es lo que permite mitigarlo y cumplir la línea roja.

  == Métrica de equidad
  Hemos decidido mantener la métrica que utilizamos en el sprint anterior para poder analizar la equidad en el sistema. Este consistía en medir la diferencia entre los porcentajes de acierto obtenidos al analizar declaraciones de personas públicas agrupadas según características como orientación política o género. Por otro lado, nuestra linea roja consistía en que la personalización del perfil, la información que se les muestra a los usuarios, nunca variase por su orientación política u otro rasgo personal. Nos comprometemos, a utilizar esas agrupaciones unicamente durante las auditorías, solo datos de las personas públicas que se analizan con el objetivo de detectar sesgos y nunca para personalización de usuarios. 
]