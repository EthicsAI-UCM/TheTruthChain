#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "B"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Canal de reclamación"
#let bibliografia = path("biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[

  = Canal de Reclamaciones
  Para nuestra aplicación es de vital importancia crear un canal de reclamaciones, para que cualquier persona que opine que ha sido perjudicada o que los datos compartidos son inexactos pueda hacernoslo saber y nosotros podamos tomar las medidas necesarias.

  En el Sprint anterior analizamos la responsabilidad legal que debíamos tener en cuenta para nuestro sistema a la hora de públicar información y no vulnerar el derecho al honor y la intimidad en la ley orgánica 1/1982 @ley_1982. 

  Asimismo, debemos tener en cuenta el Reglamento General de Protección de Datos @rgpd2016, especialmente el artículo 6, que establece las condiciones bajo las cuales es lícito tratar datos personales, y el artículo 9, que aborda las categorías especiales de datos personales y las excepciones que permiten su tratamiento. Más concretamente, el apartado 2.e del artículo 9 que permite explícitamente el tratamiento de datos personales que el interesado ha hecho manifiestamente públicos. Está será una situación muy habitual, pues trabajamos principalmente con declaraciones públicas de personas de interés como son los políticos. 


  == Diseño
  Hemos diseñado un sistema sencillo para que sea accesible al mayor número de personas posibles. Se va a poder acceder al canal de solicitud de dos maneras: desde los informes, su ID se rellena automáticamente, o desde un apartado general donde el usuario tenga que introducir ese ID manualmente. Los pasos a seguir para realizar una solicitud o reclamación son:  

  Pulsar el botón de "reclamaciones" y rellenar un formulario. Primero se pedirá que se faciliten los datos del interesado para poder ponernos en contacto con él. Dentro de este formulario habrá una opción para seleccionar el tipo de error que se ha cometido. Hemos clasificado las tipologías de reclamaciones en las cuatro siguientes:
  - Información incorrecta, inexacta o desactualizada.
  - Fuente incorrecta o mal atribuida.
  - Posible vulneración de derechos o perjuicio.
  - Protección de datos personales.
  También se pedirá seleccionar el tipo de acción solicitada por el interesado: revisión, rectificación, supresión u otro; y explicar el error o problema. 

  Estas reclamaciones serán atendidas y revisadas por humanos. Además, se dará prioridad a las que estén relacionadas con vulneraciones de derechos. Tras está revisión se tomará una decisión. En caso de supresión o rectificación, corregiremos el error en todos los lugares donde corresponda y publicaremos un aviso de correción en el propio informe explicándolo. También informaremos a la persona afectada de la resolución y pediremos disculpas, si corresponde. Sin embargo, es importante entender que el hecho de que una persona no esté de acuerdo con la información publicada o considere que le perjudica, no significa que estemos obligados legalmente a suprimirla o modificarla. Hay ocasiones en las que prevalece el derecho de informar sobre asuntos de interés público, que es nuestro principal objetivo, y es por esto que consideramos que este será uno de los escenarios más habituales del canal de reclamaciones.

  En cuanto a los plazos de respuesta a las reclamaciones, la legislación española establece como tiempo de respuesta un mes en el caso de las reclamaciones relacionadas con la protección de datos personales @rgpd2016. Sin embargo, es intención de la ONG resolverlas en el menor tiempo posible. Se marca como objetivo conseguir respuesta en 10 días laborables para el 80% de las reclamaciones dando prioridad a las reclamaciones de mayor urgencia.
  #pagebreak()
  A continuación se muestra un ejemplo:
  #figure(
    image("recursos/ejemplo_reclamaciones.png", width: 100%),
    caption: [prototipo de canal de reclamación],
  )

]
