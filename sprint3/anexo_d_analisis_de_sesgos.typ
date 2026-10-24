#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "D"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Análisis de Sesgos"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[

  = Análisis de sesgos
  
  == Infrarrepresentación

  TTC recopila información de fuentes digitales y no todas las voces tienen la misma presencia en Internet. Los grandes medios, los países con más recursos y los idiomas mayoritarios producen más contenido, por lo que acaban dominando la base de fuentes del sistema. Ciertas comunidades minoritarias llegan a tener mucha menos voz en los informes cuando igual son los que saben mejor del tema. Al final, es posible que el usuario crea estar viendo una visión contrastada cuando en realidad solo ve una parte.

  *Ejemplo*: en un informe sobre unas inundaciones en una zona rural, casi todas las fuentes son grandes medios nacionales que cubren el suceso desde fuera. Los medios locales y los vecinos, que conocen de primera mano los daños y sus causas, apenas aparecen.

  == Estigmatización

  Los modelos de lenguaje aprenden de textos escritos por personas junto con los prejuicios que existan. Por ello, al elegir qué fuentes usar o cómo resumirlas en los informes, TTC puede asociar sin querer a ciertos colectivos con ideas negativas. Los informes pueden terminar reforzando un estereotipo, lo que puede aumentar la discriminación hacia ciertos colectivos.

  *Ejemplo*: ante una declaración sobre inmigración, el sistema prioriza las fuentes que la relacionan con la delincuencia por su abundancia en la base de conocimiento.

  == Sesgo temporal

  La información reciente puede ser mucho más abundandte y accesible que la antigua. Por eso, TTC puede tener tendencia a contruir los informes con lo más reciente, perdiendo el contexto histórico (muchas veces necesario para entender una declaración o hecho). La consecuencia es que los informes pueden dar una imagen incompleta de las personas o sucesos. Esto podría favorecer a personas que tienen un historial que conviene olvidar y perjudica a quien tiene una trayectoria coherente que el informe no refleja. 

  *Ejemplo*: una empresa retira un producto del mercado y el informe solo recoge las noticias de esa semana, sin mencionar que años antes ya había tenido problemas con ese mismo producto.
]
