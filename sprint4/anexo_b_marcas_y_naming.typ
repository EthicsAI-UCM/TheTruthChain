#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 4
#let anexo = "B"
#let fecha_entrega = datetime(year: 2026, month: 11, day: 8)
#let nombre = "Marcas y Naming"
#let bibliografia = none


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Marca y naming

  == Propuesta de nombre

  Proponemos mantener el nombre *TheTruthChain* (*TTC*), usado desde el Sprint 1:

  - *Truth*: el objetivo de acercar al usuario a una visión más objetiva de los hechos, sin pretender dictar la verdad.
  - *Chain*: la cadena de trazabilidad que TTC reconstruye desde una declaración hasta su fuente original, acumulando hechos a largo plazo.

  El acrónimo *TTC* es corto, fácil de pronunciar en español y en inglés y sirve como versión reducida de la marca.

  == Logos

  El símbolo está formado por tres nodos unidos en diagonal ascendente. Representan la cadena de evidencias que TTC reconstruye desde una declaración hasta su fuente original. Los dos primeros nodos son huecos y el último, relleno de color, es la fuente verificada. Junto al símbolo aparece el nombre con el lema "Contrasta, no dicta".

  #figure(
    image("recursos/logo_principal_claro.png", width: 100%),
    caption: [Logo principal versión clara],
  )

  #figure(
    image("recursos/logo_principal_oscuro.png", width: 100%),
    caption: [Logo principal versión oscuro],
  )

  El acrónimo *TTC* es la versión reducida de la marca. Se usa como avatar en redes sociales y en espacios donde el nombre completo no sería legible.

  #figure(
    image("recursos/acronimos.png", width: 100%),
    caption: [Logo principal versión clara],
  )
  El icono de aplicación contiene solo el símbolo, sin texto, para que se reconozca en tamaños pequeños.
  #figure(
    image("recursos/icono_app.png", width: 100%),
    caption: [Iconos de App],
  )

  == Búsqueda Exploratoria de Colisiones

  === Clases de Niza

  Las marcas se registran para productos y servicios concretos, agrupados en las 45 clases de la Clasificación de Niza. Dos marcas iguales pueden coexistir si protegen productos o servicios distintos y no hay riesgo de confusión entre ellas. Por eso la búsqueda se ha centrado en las clases que cubren la actividad de TTC:

  #table(
    columns: (auto, 1fr, 1fr),
    align: left,
    [*Clase*], [*Contenido*], [*Relación con TTC*],
    [9], [Software descargable y aplicaciones informáticas], [La aplicación de código abierto que los usuarios pueden instalar],
    [42], [Servicios tecnológicos, desarrollo de software y software como servicio (SaaS)], [La plataforma online de consulta y contraste de información],
    [41], [Educación, publicación y servicios de información y reportajes], [La difusión de información contrastada al público],
  )

  === Registros de marcas

  La búsqueda se realizó el 4 de noviembre de 2026 en el localizador de la OEPM, EUIPO eSearch y TMview, con los términos _TheTruthChain_, _TruthChain_ y _Truth Chain_. En la OEPM y en la EUIPO no existe ninguna marca idéntica ni similar, por lo que no hay derechos anteriores con efecto en España ni en la UE.

  El único resultado relevante es la marca _TruthChain_, registrada en la OMPI por un titular japonés en la clase 9. Este registro internacional no designa a España ni a la UE, así que no impide el uso ni el registro de nuestra marca en el territorio de lanzamiento. Lo consideramos un riesgo *bajo*, que solo sería relevante si TTC se expandiera a los países donde esa marca tiene protección o si su titular la extendiera a la UE. Por ello se vigilará su estado periódicamente.

  == Guía mínima de uso de marca

  *Versiones.* El logo principal es la opción preferente. Existe una versión para fondos oscuros, el acrónimo _TTC_ para espacios reducidos y un icono para la aplicación.

  *Uso correcto.* El logo debe usarse siempre con sus colores y proporciones originales, con espacio libre suficiente a su alrededor y a un tamaño que permita leerlo. El nombre se escribe siempre como _TheTruthChain_. No se permite deformar el logo, cambiar sus colores, añadirle efectos ni combinarlo con otras marcas.

  *Uso por terceros.* El código de TTC es libre, pero la licencia no incluye la marca. Cualquiera puede mencionar el nombre para referirse al proyecto, por ejemplo en artículos, docencia o en expresiones como "basado en TTC". En cambio, los productos derivados no pueden usar el nombre ni el logo como propios ni presentarse como versión oficial. En un proyecto de verificación, una copia falsa podría difundir desinformación con nuestra marca. Los usos comerciales requieren autorización, y los usos indebidos pueden notificarse a través del canal de reclamaciones del Sprint 3.

]
