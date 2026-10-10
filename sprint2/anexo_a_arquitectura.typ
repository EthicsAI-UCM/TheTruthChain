#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 2
#let anexo = "A"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 11)
#let nombre = "Arquitectura de la aplicación"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Introducción

  Nuestra aplicación permite hacer consultas sobre personas/entidades y temas o sucesos con los que están o han estado implicado. La arquitectura principal será similar a la un sistema experto. Sin embargo, el motor de inferencia no tendrá solo reglas clásicas si no que serán pipelines basados en modelos de lenguaje. Además habrá un modulo con conexión a Internet que permite obtener nueva información de manera automática o bajo demanda.


  #figure(
    image("recursos/Arquitectura.png", width: 100%),
    caption: [Esquema de la arquitectura de la aplicación],
  )

  = Base de conocimiento

  La base de conocimiento almacena todo el conocimiento que se tiene sobre los temas, personas y entidades con los que trabaja el sistema. Dentro del grafo de conocimiento existen 3 elementos muy importantes: las personas/entidades, los temas y las afirmaciones. Todo el razonamiento del sistema se basa en estos 3 elementos.

  #figure(
    image("recursos/KG_basic.png", width: 60%),
    caption: [Base de conocimiento de afirmaciones básica],
  )

  == Afirmaciones

  Pueden existir diferentes tipos de afirmaciones. Las afirmaciones se pueden se clasificar principalmente por tipo y por grado de veracidad. El grado de veracidad es un número comprendido entre 0 y 1 e indica la certeza que se tiene de que la afirmación haya sido publicada o dicha por la persona correspondiente. Por otro lado, el tipo de afirmación indica con que clase afirmación estamos trabajando. Podemos encontrar datos/hechos, opiniones... Las afirmaciones siempre tienen una fuente asociada que permite verificarlas y saber de donde proceden.

  == Temas

  Los temas son conceptos o relaciones que surgen dentro del debate público. Están relacionados con afirmaciones y también con otros temas o subtemas derivados.

  == Personas / Entidades

  Las personas o entidades son los elementos que realizan "acciones". Pueden ser directamente las personas implicadas que realizan afirmaciones o también las propias fuentes que proveen de afirmaciones al grafo.

  == Otros conceptos

  También existen elementos dentro del grafo de conocimiento que surgen de relacionar varias afirmaciones y entidades del grafo original. Por ejemplo tenemos los argumentos que surgen de afirmaciones de opinión y que intentan ser demostrados por medio de datos del propio grafo o por medio de búsquedas externas que completan al propio grafo. La idea de estos argumentos es poder encontrar una forma verificable de sustentar las afirmaciones. También existen falacias que le restan válidez a la argumentación.

  = Módulo de Internet

  Este módulo se encarga de obtener información de Internet a través de distintos medios como pueden ser las RRSS, noticias o delcaraciones en sitios oficiales.

  == Fuentes de información.

  === Noticias

  Para extraer los datos de medios de prensa utilizaremos de manera principal web scrapping o RSS. Para realizar web scrappingdebemos de tener cuidado con los términos que ponen los periódicos para ser web scrappeados. Estudiaremos cada medio y diseñaremos un scrapper para cada medio atentiendo a restricciones como el `robot.txt` de la web. En los casos que no sea legal realizar este scrappeo automatizado por que la información no sea pública o no esté disponible optaremos por subscribirnos al periódico o contactar directamente con el mismo para que nos permita usar sus publicaciones.

  === Redes sociales (_X_)

  Para extraer los datos en _X_ usaremos la API oficial #cite(<twitter_dev>) de pago que proveen. Existen dos niveles de API la básica de pago por uso y la _enterprise_. En el peor caso solo tendremos acceso a la versión de pago por uso. Con esta versión obtendremos acceso a usuarios, publicaciones y trends.

  Por defecto nos interesa extraer información de manera periódica de una lista perfiles de interés. Dentro esta información se incluyen posts o comentarios, _retweets_... . Estos perfiles de interés se seleccionan de manera manual. Aunque no se descarta, realizar un sistema que aprovechando la información que se procesa permita descubrir nuevos perfiles de interés emergentes que deberán de ser válidados por una persona para ser introducidos en la lista de perfiles públicos de interés.

  #figure(
    image("recursos/backend_extract_user_twitter.png", width: 50%),
    caption: [Extracción de datos de perfiles en _X_],
  )

  Otra información de interés son los últimos trends en la plataforma. Esta información permite analizar como se transforma el panórame público a lo largo del tiempo. Por ejemplo permite analizar la pérdida de relevancia de un tema a lo largo del tiempo. Esto es útil porque permite detectar cortinas de humo que muevan el foco de la atención pública a otros lados.

  #figure(
    image("recursos/backend_extract_trend_twitter.png", width: 50%),
    caption: [Extracción de datos de tendencias en _X_],
  )

  === Otras fuentes

  Existen datos que no sea encuentran en noticias o medios directamente o que se podrían ver alterados por eso en muchos casos lo mejor es dirigirse a la fuente de la información original. Estas fuentes son variada y pueden ir desde estudios independientes o estadísticas hasta declaraciones públicas en páginas web oficiales o vídeos de plenos parlamentarios y ruedas de prensa. Para identificar estas fuentes habrá que realizar una extracción de datos especializada y ajustada al formato de cada fuente. No es lo mismo extraer una sesión del parlamento que extraer estadística del informe del paro anual.

  == Preprocesamiento

  Todos los datos que obtenemos deben pasar por una fase de preprocesamiento para poder ser ingeridos por el sistema de manera correcta. Este preprocesamiento tiene tres fases:
  un filtrado previo, que tiene como objetivo evitar procesar información innecesaria o inútil; un preprocesamiento específico según el formato del dato; un filtrado posterior una vez procesada la fuente que permite verificar que la información preprocesada es útil.

  === Preprocesamiento de texto

  Para hacer que el sistema funcione de manera más robusta es mejor que todo se encuentre en un mismo idioma. Por tanto todo texto que pasa por el sistema será traducido al español también habrá que detectar faltas de ortografía, coherencia o cohesión que puedan llevar a una confusión dentro del texto. Toda modificación que se haga del texto estarájustificada y siempre habrá un enlace al texto original sin clasificar.

  #figure(
    image("recursos/PRE_text.png", width: 80%),
    caption: [Preprocesamiento del texto extraído],
  )

  === Preprocesamiento de audio

  De cara al audio y vídeo vamos a transcribirlo para poder procesarlo como texto. Para ello usaremos un pipeline que filtre el ruido y que realice una transcripción completa del audio.


  #figure(
    image("recursos/PRE_audio.png", width: 80%),
    caption: [Preprocesamiento del audio extraído],
  )

  == Pipelines

  La idea del modulo es que se utilizado como motor de búsqueda y consulta por parte del motor de inferencia, si el grafo de conocimiento no contiene toda la información necesaria. Por otro lado, también existen pipelines que corren de manera automática que añaden información de manera periódica al grafo de conocimiento. Un ejemplo de este pipeline sería uno que cada mañana leyese las noticias de un periódico y las introduzca dentro de la base de conocimiento.

  = Motor de inferencia

  El motor de inferencia se encarga de tomar los datos poco procesados de la módulo de Internet e ir procesándolos poco para intentar sacar conclusiones, ver contradicciones, analizar tendencias, contrastar fuentes.

  == Análisis de textos

  Cuando recibimos los textos/afirmaciones es importante analizar su intención. Existen textos con un carácter más argumentativo y otros con un carácter más expositivo, además de analizar como de subjetivos u objetivos tratan de parecer. Esta clasifición nos indica que clase de argumentos o datos vamos a encontrar en el texto y como debemos de tratarlas. Los textos argumentativos se sustentan en argumentos. Los argumentos tienen cierto carácter subjetivo y fácil caer en falacias o malas argumentaciones. Por otro lado, textos expositivos suelen usar datos los cuales hay que verificar para ver que no sean inventados. La idea es que clasificando y etiquetando estos argumentos y datos de manera sistemática sea más fácil diseñar usar un LLM que use la información para dar una conclusiones que puedan ser explicables y trazables.

  == Análisis de las fuentes

  Otro módulo del motor inferencia será el que se encargue de verificar la válidez y sesgos delas distintas fuentes que alimentan a la base de conocimiento. De esta manera podemos tener cierta incertidumbre que puede ser usado por el resto de pipelines para tratar la información con una mayor importancia o que puede ser usada por el usuario, para ver si da la información como buena o debe de investigar más por su cuenta.

  == Análisis de tendencias y anomalias

  La idea de este modulo es tener visión "áerea" de un tema o varios temas relacionados y analizar anomalías o tendencias que se han dado. El objetivo no es llegar a conclusiones solidas pero si realizar hallazgos o análisis que pueden motivar una búsqueda más profunda en ciertos temas. Por ejemplo se puede dar un tema tendencia en RRSS y posteriormente que al par de días una persona de interés hable del tema, es interesante si este comportamiento se produce con todos los temas o solo con algunos.

  = Interacción con el usuario

  El usuario no tendrá acceso directamente al sistema. Su acceso se realizará por medio de una interfaz web donde podrá buscar información relevante filtrada por persona, tema de conversación o por afirmación concreta. En ningún caso la idea será que haya algún tipo de chat de texto con un bot. El usuario buscará el elemento que quiera y el sistema le devolverá unos reportes provenientes de la información almacenada en la base de conocimiento. La idea para compilar estos reportes es usar la menor cantidad de sistemas basados en LLM e intentar usar sobretodo clasificatores para seleccionar que información es más importante. En este apartado es muy prometedor el uso de los nuevos modelos _Jev-based_, como por ejemplo Clef.
]
