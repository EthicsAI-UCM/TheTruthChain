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

  = Uso de la IA

  Hemos usado IA para la búsqueda de fuentes que respalden el argumento de la creciente preocupación por la desinformación debido a la IA.

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

]
