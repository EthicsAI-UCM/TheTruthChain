#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "H"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 25)
#let nombre = "Uso de la IA"
#let bibliografia = none


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  Se usó la IA para la creación de un ejemplo visual para el canal de reclamaciones

  #h4[link:]
  #pretty_box[
    ```
    https://chatgpt.com/s/cx_6adba79867f88191baf567f911d54d3c
    ```
  ]

  También se ha usado para sugerir métricas en algunos compromisos de equidad

  #h4[link:]
  #pretty_box[
    ```
    https://chatgpt.com/share/6ade2f9c-95bc-83eb-bb6d-3595dad8ce01
    ```
  ]


  Otros aspecto en el que hemos usado IA es para la búsqueda de fuentes que respalden el argumento de la creciente preocupación por la desinformación debido a la IA.

  #h4[Prompt:]
  #pretty_box[
    ```
    ¿Existe algún estudio que analize el auge de la desinformación en la sociedad actual con estadísticas agregadas a lo largo del tiempo especialmente antes del auge de los llms y después?
    ```
  ]

  #h4[Salida:]

  Se reproduce a continuación la respuesta, reorganizada con epígrafes, listas y una tabla para facilitar su lectura.

  #pretty_box[
    #set text(size: 9pt)
    #set par(justify: true, leading: 0.62em, spacing: 0.8em)
    #show heading.where(level: 4): it => block(above: 1.1em, below: 0.35em)[
      #set text(size: 10pt, weight: "bold")
      #it
    ]

    No existe un único estudio cuantitativo *ómnibus* que haya medido con un panel continuo y uniforme la desinformación en toda la web antes y después de los LLM. Sin embargo, la comunidad científica aborda esta transición mediante estudios longitudinales por partes y metaanálisis o revisiones sistemáticas (_scoping reviews_) que comparan métricas pre-LLM con métricas post-LLM.

    Existen informes clave, repositorios de datos y marcos de investigación que estructuran esta evolución estadística.

    #heading(level: 4, numbering: none, outlined: false)[1. Macroanálisis e informes de tendencias longitudinales]

    - *Reuters Institute Digital News Report (Universidad de Oxford).* Pre-LLM (2018–2022): documentó la percepción de la desinformación en redes sociales tradicionales (Facebook, Twitter/X). En 2021/2022, el promedio global de preocupación por la información falsa en red oscilaba entre el 54 % y el 56 %. Post-LLM (2023–2025): registró un aumento sostenido en la preocupación pública, alcanzando cifras históricas superiores al 62 %–65 % en diversos países. Además, midió la migración del tráfico informativo desde plataformas abiertas hacia entornos cerrados y bots conversacionales.
    - *World Economic Forum (Global Risks Report).* En sus mediciones anuales basadas en datos agregados, la desinformación (_misinformation_) pasó de ser un riesgo moderado en el horizonte de 10 años (era pre-LLM) a situarse como el riesgo global número 1 a corto plazo (2 años) a partir de 2024.

    #heading(level: 4, numbering: none, outlined: false)[2. Cambios estadísticos cuantitativos: pre-LLM vs. post-LLM]

    Los metaanálisis sobre propagación y generación de desinformación destacan tres transformaciones cuantitativas estructurales:

    #set text(hyphenate: false)
    #set par(justify: false)
    #table(
      columns: (1fr, 1.15fr, 1.15fr),
      inset: 4pt,
      align: (left + top, left + top, left + top),
      stroke: 0.5pt + luma(150),
      table.header([*Métrica / dimensión*], [*Era pre-LLM (hasta ~2022)*], [*Era post-LLM (~2023 en adelante)*]),
      [*Costo y escalabilidad*],
      [Alto costo marginal. Se requerían «granjas de bots» o redactores humanos para redactar artículos falsos persuasivos.],
      [*Costo marginal cercano a cero.* Capacidad de generar miles de variaciones de un mismo relato en segundos.],

      [*Calidad textual (filtro sintáctico)*],
      [Fácil detección básica: errores gramaticales, traducciones toscas y patrones repetitivos evidentes en bots de primera generación.],
      [*Alta plausibilidad lingüística.* Redacción fluida, académica o nativa, sin errores sintácticos, que evade los filtros tradicionales.],

      [*Estructura de redes*],
      [Difusión centralizada o viral. Coordinación en redes sociales públicas (X, Facebook) mediante amplificación sintética.],
      [*Microsegmentación y bots conversacionales.* Persuasión directa e individualizada; proliferación de sitios web de «SEO-spam» generados automáticamente.],
    )

    #set text(hyphenate: true)
    #set par(justify: true)

    #heading(level: 4, numbering: none, outlined: false)[3. Revisiones sistemáticas e investigaciones destacadas]

    - *Revisiones de alcance sobre IA generativa y desinformación (2024–2025).* Síntesis de investigaciones empíricas (como análisis de más de 20–30 estudios agrupados) que han comparado el impacto persuasivo. Estudios liderados por el MIT Sloan o la Universidad de Zúrich han hallado estadísticamente que los textos desinformativos creados por LLM (por ejemplo, GPT-4) son entre un 15 % y un 70 % más persuasivos para los usuarios humanos que los textos falsos redactados por personas sin entrenamiento especializado.
    - *Análisis de capacidad de fact-checking.* Estudios de evaluación longitudinal sobre la precisión de los propios modelos muestran que, aunque los LLM se utilizan para automatizar la verificación de datos, presentan una tasa de error significativamente mayor al evaluar afirmaciones objetivas complejas o económicas en comparación con simples opiniones.

    #heading(level: 4, numbering: none, outlined: false)[4. Fuentes de datos y datasets abiertos para investigación]

    Si se buscan analizar los conjuntos de datos crudos para realizar un estudio propio o revisar las muestras:

    + *Duke Reporters' Lab (Global Fact-Checking Database).* Mantiene el registro global de iniciativas de verificación de datos a lo largo del tiempo, mostrando el salto masivo en el volumen de _claims_ analizados pre y post-2022.
    + *GDI (Global Disinformation Index).* Evalúa el riesgo de desinformación en dominios web usando indicadores cuantitativos continuos.
    + *Fact-checking benchmarks* (p. ej. LIAR, FEVER vs. benchmarks de LLM). Compara el rendimiento de los clasificadores automáticos entrenados con datos estáticos pre-2022 frente a las narrativas sintéticas post-2023.

    #heading(level: 4, numbering: none, outlined: false)[Fuentes]

    + #link(
        "https://www.researchgate.net/publication/396009805_Generative_AI_and_misinformation_a_scoping_review_of_the_role_of_generative_AI_in_the_generation_detection_mitigation_and_impact_of_misinformation",
      )[*Generative AI and misinformation: a scoping review of the role of generative AI in the generation, detection, mitigation and impact of misinformation.*]
    + #link("https://arxiv.org/html/2506.03655v1")[*A Multilingual, Comparative Analysis of LLM-Based Fact-Checking.*]
  ]

  Finalmente, se ha consultado a la IA sobre el marco legal que afecta a la recolección automática de información (*web scraping*) en España, para justificar la legalidad del proceso de obtención de fuentes del sistema.

  #h4[Prompt:]
  #pretty_box[
    ```
    En la legislación española donde esta recogido el web scrapping
    ```
  ]

  #h4[Salida:]

  Se reproduce a continuación la respuesta, reorganizada con epígrafes y listas para facilitar su lectura.

  #pretty_box[
    #set text(size: 9pt)
    #set par(justify: true, leading: 0.62em, spacing: 0.8em)
    #show heading.where(level: 4): it => block(above: 1.1em, below: 0.35em)[
      #set text(size: 10pt, weight: "bold")
      #it
    ]

    No existe en España una norma que regule «el web scraping» como tal. Lo que hay es un *régimen de concurrencia*: según qué se extraiga, cómo se haga y para qué se use, resulta aplicable una u otra ley. Resumen por bloques:

    #heading(level: 4, numbering: none, outlined: false)[1. Propiedad intelectual — LPI (RDL 1/1996)]

    Es el eje principal cuando se extraen textos, noticias o páginas ajenas:

    - *Arts. 17-20:* la extracción constituye un acto de _reproducción_ y, si además se publica, de _comunicación pública_, ambos sujetos al derecho exclusivo del autor (salvo límite legal o licencia).
    - *Art. 37.1:* derecho de cita o reseña (fragmentos, con finalidad de análisis o comentario y mención de autor y fuente).
    - *Art. 37.2:* ilustración con fines educativos o de investigación científica, sin ánimo de lucro comercial y con atribución.
    - *Bases de datos:* art. 12 (si son originales) y *arts. 133-137*, que reconocen un derecho _sui generis_ del fabricante: prohíbe la extracción o reutilización sustancial (art. 134) y también la extracción repetida y sistemática de partes no sustanciales (art. 135), que es en la práctica la definición de un scraping masivo.
    - *Minería de textos y datos (TDM):* *art. 67 LPI*, introducido por el *RDL 24/2021*, que traspone la Directiva (UE) 2019/790. Distingue dos regímenes: el uso con fines de investigación científica (no excluible por contrato) y el uso general, que el titular puede reservarse expresamente mediante medios legibles por máquina (metadatos, robots.txt, condiciones de uso). Es el precepto más cercano a «autorizar» el scraping.

    #heading(level: 4, numbering: none, outlined: false)[2. Protección de datos — RGPD y LOPDGDD (LO 3/2018)]

    Si lo extraído incluye personas físicas identificables (nombres, correos, cargos, fotografías):

    - *Art. 6 RGPD:* se necesita una base jurídica, normalmente el interés legítimo, con la correspondiente ponderación.
    - *Art. 14 RGPD:* deber de informar aunque los datos no se hayan obtenido del interesado (con la excepción de esfuerzo desproporcionado del art. 14.5.b, pero con salvaguardas).
    - *Arts. 5, 9, 15-22, 25 y 35:* minimización, categorías especiales, derechos de supresión y oposición, privacidad desde el diseño y evaluación de impacto (EIPD) si hay perfilado a escala.
    - *Doctrina clave:* que un dato esté publicado en internet no lo hace reutilizable (TJUE, asunto _Google Spain_, C-131/12). La AEPD ha sancionado el scraping masivo (por ejemplo, el caso de Clearview AI) y la Declaración conjunta de autoridades europeas sobre _data scraping_ (2023) lo confirma.

    #heading(level: 4, numbering: none, outlined: false)[3. Competencia desleal — Ley 3/1991 (LCD)]

    Es la vía más utilizada en la práctica cuando lo extraído pertenece a un competidor: art. 4 (cláusula general), art. 11 (imitación), art. 13 (violación de secretos), art. 14 (inducción al incumplimiento contractual, típica al saltarse las condiciones de uso) y art. 15 (violación de normas). Como jurisprudencia de referencia destacan los litigios de Ryanair contra eDreams, Atrápalo y On the Beach (Juzgados de lo Mercantil de Barcelona y Audiencias Provinciales), sobre scraping de vuelos e incumplimiento de condiciones de uso.

    #heading(level: 4, numbering: none, outlined: false)[4. Secretos empresariales — Ley 1/2019]

    El art. 2 define el secreto empresarial y el art. 13 declara ilícita la obtención de información secreta sin consentimiento de su titular, lo que cubre el scraping de áreas privadas, de contenido tras un inicio de sesión o de datos internos.

    #heading(level: 4, numbering: none, outlined: false)[5. Código Penal (cuando median medios técnicos o datos personales)]

    - *Art. 197:* descubrimiento y revelación de secretos (197.2 para datos personales y 197.3 para su difusión).
    - *Art. 197 bis* (acceso ilícito a sistemas informáticos) y *art. 197 ter* (programas o instrumentos destinados a ello).
    - *Art. 264:* daños informáticos, relevante si se satura el servidor.
    - *Arts. 270 y 278-280:* delitos contra la propiedad intelectual y espionaje.
    - Burlar inicios de sesión, captchas, muros de pago o límites de peticiones es el factor que suele convertir un conflicto civil en penal.

    #heading(level: 4, numbering: none, outlined: false)[6. LSSI (Ley 34/2002)]

    El *art. 21* prohíbe enviar comunicaciones comerciales por correo electrónico a direcciones obtenidas mediante scraping sin consentimiento previo, infracción muy sancionada por la AEPD en coordinación con el RGPD.

    #heading(level: 4, numbering: none, outlined: false)[7. Normativa europea reciente (si se extrae para entrenar IA)]

    - *Reglamento (UE) 2024/1689 (RIA/IA Act), art. 53.1.c y d y anexo XI:* los proveedores de modelos de propósito general deben respetar la reserva de derechos para TDM y publicar un resumen suficientemente detallado de los contenidos de entrenamiento, incluidos los obtenidos por _crawling_.
    - *DSA (Reglamento 2022/2065), art. 40:* acceso a datos para investigadores validados, vía legal alternativa al scraping.
    - *robots.txt:* no es una norma jurídica, pero es el estándar (RFC 9309) que acredita la reserva de derechos del art. 67 LPI y la mala fe de quien lo ignora.

    #heading(level: 4, numbering: none, outlined: false)[Conclusión]

    Lo más parecido a «dónde está recogido el web scraping» es el *art. 67 LPI* (TDM) tras el RDL 24/2021, pero el permiso real depende de la LPI (arts. 17-20, 37 y 133-137), el RGPD y la LOPDGDD, la LCD y el Código Penal. No existe ni un «derecho a scrapear» ni una prohibición general: extraer contenido público suele ser lícito si se respetan robots.txt y las condiciones de uso, no se eluden medidas técnicas, no se extraen bases de datos de forma sustancial o sistemática, se cita en lugar de copiar y no se tratan datos personales sin base jurídica.

    #text(size: 8pt)[_Nota:_ se trata de orientación técnica y no de asesoramiento jurídico. Conviene verificar la numeración exacta de los arts. 67 y siguientes en el texto consolidado del BOE, ya que el RDL 24/2021 reorganizó ese capítulo.]
  ]

]
