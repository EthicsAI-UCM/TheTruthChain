#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 2
#let anexo = "C"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 11)
#let nombre = "Uso de Información"
#let bibliografia = path("./biblio_anexoc.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  


= Uso de información de periódicos y otros medios en TTC

== Uso de hechos

Nuestra base de conocimiento guarda afirmaciones con su fuente asociada, no artículos completos. La ley lo permite porque las noticias del día y los sucesos no están protegidos por derechos de autor @conv_berna. En cambio, lo que sí está protegido  es la forma que redacta el periodista la noticia por considerarse "creación original".

En nuestro caso, no usaremos la redacción o el texto explícito de una noticia sino solo el hecho del que se habla, por lo que no supondría violación a derechos del autor de ningún modo. Además de que siempre redirigiremos a la fuente en la que obtenemos la información referenciando la noticia y el medio correspondiente.

== Extracción de información.

TTC obtendrá el contenido de los medios mediando _web scraping_, RSS y APIs. Estas técnicas las usamos solo para recopilar información para realizar minería de textos y datos: analizar los textos de forma automatizada para obtener información. La ley permite realizar este análisis con tres condiciones @mineria_datos_texto:

1. Acceso legal.
2. Las extracciones solo se conservan el tiempo necesario para realizar el análisis.
3. El medio no se opone.

Por ello, es importante investigar cada medio por separado para conocer sus términos y condiciones a la hora de extraer la información y los hechos para asegurarnos de la legalidad del proceso. En caso de que el medio tenga una API oficial, consideraremos en primer lugar usar esta misma para extraer información.

]