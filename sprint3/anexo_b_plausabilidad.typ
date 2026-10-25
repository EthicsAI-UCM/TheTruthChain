#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "B"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Plausabilidad"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Introducción

  El proyecto es plausible, sin embargo, existen 3 problemas que pueden amenazar la viabilidad del mismo: el auge de la desinformación, la financiación del proyecto y la regulación sobre la IA.

  = Auge de la desinformación

  En los últimos años la desinformación se ha convertido en uno de los mayores problemas que amenazan a nuestra sociedad. Aunque la desinformación siempre ha sido usada como arma por parte de agentes maliciosos, nunca antes en la historia ha tenido tanto protagonismo.

  Un reflejo de la creciente preocupación por el auge de la desinformación en Internet se encuentra en el _Global Risks Report_ del _World Economic Forum_, el cual refleja cuáles son los riesgos más preocupantes de cara a los próximos años por medio de una serie de encuestas. En el reporte de 2026, la desinformación se sitúa como el segundo riesgo con posible mayor impacto en un plazo de 2 años y el cuarto en un plazo de 10 años @wef_global_risks_2026. Además, si analizamos informes anteriores podemos ver que la desinformación no pasó a ser catalogada como riesgo por el _WEF_ hasta el reporte de 2023, donde se situaba en la posición 16 y 11 en un plazo de 2 y 10 años respectivamente @wef_global_risks_2023. El año 2023 no es casualidad, ya que fue el 30 de noviembre de 2022 cuando se lanzó ChatGPT.

  Las conclusiones son claras: con el auge de las redes sociales y la IA generativa, la desinformación es un riesgo real que no parece que vaya a frenar en los próximos años. Es por ello que, para mitigar sus efectos en nuestro proyecto, debemos invertir la mayor cantidad de recursos posibles en desarrollar buenos filtros y sistemas que puedan evitar que esta información contamine el sistema. Esto es plausible, pero se necesita contar con un buen equipo de ingenieros respaldado por un equipo de periodistas y, de manera puntual, expertos en la materia que puedan auditar el sistema de manera regular.

  = Viabilidad económica

  Nuestro proyecto se organiza bajo el marco de una organización sin ánimo de lucro. Esto quiere decir que no buscamos generar ingresos y que nuestro único objetivo es realizar la labor social de informar a la población. Por ello queremos que nuestro sistema sea público y gratuito, para que llega a la mayor cantidad posible de población y pueda ser lo más útil posible. Si a esto le sumamos el hecho de que queremos ser independientes y no ser influenciados por ninguna entidad externa, esto da como resultado que _TheTruthChain_ es un proyecto difícil de financiar. El proyecto no es barato ya que necesitamos de una gran cantidad de personal que no solo mejore el sistema constatemente, si no que necesitamos un gran equipo de profesionales encargado de verificar que todo funciona correctamente y de realizar las correciones y revisiones manuales pertinentes.

  Existen algunas organizaciones con un objetivo similar al nuestro, por ejemplo, _factcheck.org_ o _maldita.es_. Estas organizaciones también son organizaciones sin ánimo de lucro que buscan mitigar el problema de la desinformación. En el caso de _factcheck.org_ el cuál se financia por medio de fundaciones con mayores recursos como la _Annenberg Foundation_. También aceptan donanciones de individuos y de manera ocasional de empresas como _Meta_ y _Google_ cuando lanzan campañas concretas de lucha contra la desinformación @factcheck_funding. El caso de _maldita.es_ es bastante similar, de manera ocasional colabora con empresas que permiten mantener el proyecto a flote siempre y cuando el acuerdo con estas empresas permita a la organización mantener su independencia y transparencia @maldita_funding.

  Inevitablemente si queremos que el proyecto sea plausible vamos a tener que recurrir a organizaciones que nos puedan financiar.Para evitar conflictos de interés debemos de elaborar políticas internas que regulen de manera estricta el alcance de estas colaboraciones para garantizar nuestra integridad y transparencia hacia el usuario.

  = Legislación sobre la IA

  Es imposible conocer bajo que legislación nos regiremos dentro de 10 años. Si bien ya existe una legislación vigente que regula el uso de la IA a nivel europeo (IA Act), la cual entró en vigor en 2024, nadie puede garantizar que sea actualizada o revisitada dentro de un par de años conforme la IA evoluciona. Otro aspecto importante es la protección de datos y la _GPDR_.

  Si bien el riesgo de que nuestro proyecto se vuelva ilegal en un par de años es una posibilidad remota, la probabilidad no es igual a 0. Y es que recientemente se han planteado medidas que de manera camuflada amenazan la libertad de expresión. Ejempl de esto es la _EU Kids Act_. Estas medidas a nivel superficial paracen buenas que ya buscan proteger a los niños, pero que numerosas organizaciones han criticado, ya que suponen un riesgo para la privacidad y libertad @edri.

  Si esta clase de movimientos y proyectos se extienden y son aprobados, nada nos garantiza que de aquí a 10 años no podamos realizar nuestra labor de manera transparente e independientes, sin ningún tipo de coaxión legal.

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
