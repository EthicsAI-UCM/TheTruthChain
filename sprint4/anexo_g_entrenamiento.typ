#import "../lib/document.typ": document

#let sprint = 4
#let anexo = "G"
#let fecha_entrega = datetime(year: 2026, month: 11, day: 8)
#let nombre = "Plan de entrenamiento sin violación de copyright"
#let bibliografia = path("biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Introducción

  TTC no entrena un modelo desde cero, al menos por ahora. Usa modelos preentrenados y recupera información del grafo, que guarda afirmaciones, metadatos, enlaces y fragmentos breves, no artículos completos. La mayor parte del riesgo de copyright no está en entrenar, el riesgo está en qué y cómo mostramos los datos al usuario. Por eso separamos lo que recogemos, lo que usamos para entrenar o ajustar un modelo y lo que aparece en los informes.

  En resumen si no tenemos clara la licencia, si no está cubierta por la excepción de minería de textos y datos o si las condiciones no nos dejan usarla, no entra.

  = De dónde salen los datos

  Los datos abiertos y de dominio público son la base más cómoda: licencias como CC0, CC BY, CC BY-SA u ODbL nos dejan usarlos si cumplimos sus condiciones #cite(<cc_licenses>). Las fuentes oficiales también nos sirven, pero miramos sus condiciones de reutilización y no reproducimos el documento entero. En prensa nos apoyamos en la excepción de minería de textos y datos, siempre que no haya reserva de derechos. En redes sociales usamos la API oficial y sus términos #cite(<x_developer_agreement>). Para libros y artículos, acceso abierto, licencias o suscripciones que permitan el uso. Obviamente no usaremos nada de bibliotecas piratas. Con audio y vídeo, solo lo que permita la licencia o la plataforma. Y si alguien nos manda contenido, pedimos permiso o que venga con licencia clara.

  La excepción española está en el artículo 67 del TRLPI, en la redacción del Real Decreto-ley 24/2021 #cite(<rdl242021>). Permite reproducir y extraer obras accesibles de forma legítima para minería de textos y datos, pero no publicar la obra completa ni usar el contenido para otras cosas. El apartado 3 excluye el uso si el titular ha reservado expresamente ese derecho por medios de lectura mecánica. Esa reserva es la que detectamos y respetamos.

  El artículo 4 de la Directiva (UE) 2019/790 es la norma europea que permite la minería de textos y datos #cite(<dsm_2019_790>). Se aplica a cualquiera, pero el titular puede reservarse ese uso. El artículo 3 también permite minería, pero solo para organismos de investigación y patrimonio cultural; no es nuestro caso, así que no lo usamos.

  Tampoco ignoramos el derecho sobre las bases de datos: si alguien ha invertido en crear una base de datos, no podemos extraer una parte importante de su contenido para fines que no sean minería #cite(<database_directive_96_9>). Para minería, la extracción sí está cubierta.

  Hay dos límites más. El primero es el derecho de los editores de prensa del artículo 15: podemos usar extractos muy breves y enlaces, pero un extracto largo puede necesitar licencia. El segundo son los términos de servicio: aunque la ley de copyright permita copiar para minería, una plataforma puede prohibir el _scraping_ en sus condiciones. Por eso usamos APIs oficiales y acuerdos.

  = Cómo lo comprobamos y qué hacemos

  Antes de meter una fuente nueva hacemos una ficha con la URL, la fecha, la licencia, las condiciones de uso, el `robots.txt`, la reserva de TDM y los usos permitidos. Esa ficha se queda en el registro de procedencia. Si no está completa, la fuente no se usa; si es nueva o dudosa, pedimos revisión jurídica. Los datos personales y las reclamaciones se gestionan en el canal del Sprint 3.

  La reserva de derechos la comprobamos con `robots.txt` y con los metadatos de TDM #cite(<rfc9309>). No saltamos muros de pago, no falseamos el _user agent_ y no evitamos los límites de acceso. Si una fuente se reserva el uso, no la usamos para minería. Si un titular retira una fuente o reserva sus derechos, se aplica el procedimiento de reclamaciones y borrado que ya está en el documento principal.

  También filtramos lo que sale: los informes no reproducen artículos completos ni capítulos de libros, solo citas breves con atribución y enlace a la fuente.

  = Entrenamiento y modelos

  Si hacemos _fine-tuning_ o entrenamiento para alguna etapa del procesamiento, el dataset pasa por un protocolo más estricto. Volvemos a revisar licencia y procedencia, quitamos datos personales y contenido con reserva de TDM. Entrenamos y evaluamos con datos separados, revisamos sesgos y calidad.

  = Datos masivos y gobernanza

  Para escalar no hacemos _scraping_ indiscriminado. Priorizamos datos abiertos y oficiales, APIs con condiciones claras y acuerdos con medios o agregadores. Common Crawl y otros corpus grandes no son una barra libre: contienen material protegido y no siempre tienen procedencia verificable. Si los usamos, será con filtros de licencia y procedencia. Tampoco usamos datos sintéticos sacados de obras protegidas sin permiso.

  El plan lo revisa el equipo y, antes de producción, una persona con formación jurídica. Cada fuente tiene su ficha y cada modelo su documentación; las reclamaciones se gestionan en el canal del Sprint 3. Una vez al año revisamos fuentes, licencias y plazos de conservación.
]
