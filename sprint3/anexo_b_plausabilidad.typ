#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "B"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Plausibilidad"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Introducción

  El proyecto es plausible, sin embargo, existen 3 problemas que pueden amenazar la viabilidad del mismo: el auge de la desinformación, la financiación del proyecto y la regulación sobre la IA.

  = Auge de la desinformación

  En los últimos años la desinformación se ha convertido en uno de los mayores problemas que amenazan a nuestra sociedad. Aunque la desinformación siempre ha sido usada como arma por parte de agentes maliciosos, nunca antes en la historia ha tenido tanto protagonismo.

  Un reflejo de la creciente preocupación por el auge de la desinformación en Internet se encuentra en el _Global Risks Report_ del _World Economic Forum_, el cual refleja cuáles son los riesgos más preocupantes de cara a los próximos años por medio de una serie de encuestas. En el reporte de 2026, la desinformación se sitúa como el segundo riesgo con posible mayor impacto en un plazo de 2 años y el cuarto en un plazo de 10 años @wef_global_risks_2026. Además, si analizamos informes anteriores podemos ver que la desinformación no pasó a ser catalogada como riesgo por el _WEF_ hasta el reporte de 2023, donde se situaba en las posiciones 16 y 11 en plazos de 2 y 10 años respectivamente @wef_global_risks_2023. El año 2023 no es casualidad, ya que fue el 30 de noviembre de 2022 cuando se lanzó ChatGPT.

  Las conclusiones son claras: con el auge de las redes sociales y la IA generativa, la desinformación es un riesgo real que no parece que vaya a frenar en los próximos años. Es por ello que, para mitigar sus efectos en nuestro proyecto, debemos invertir la mayor cantidad de recursos posible en desarrollar buenos filtros y sistemas que puedan evitar que esta información contamine el sistema. Esto es plausible, pero se necesita contar con un buen equipo de ingenieros respaldado por un equipo de periodistas y, de manera puntual, expertos en la materia que puedan auditar el sistema de manera regular.

  = Viabilidad económica

  Nuestro proyecto se organiza bajo el marco de una organización sin ánimo de lucro. Esto quiere decir que no buscamos generar ingresos y que nuestro único objetivo es realizar la labor social de informar a la población. Por ello queremos que nuestro sistema sea público y gratuito, para que llega a la mayor cantidad posible de población y pueda ser lo más útil posible. Si a esto le sumamos el hecho de que queremos ser independientes y no ser influenciados por ninguna entidad externa, esto da como resultado que _TheTruthChain_ es un proyecto difícil de financiar. El proyecto no es barato ya que necesitamos de una gran cantidad de personal que no solo mejore el sistema constatemente, si no que necesitamos un gran equipo de profesionales encargado de verificar que todo funciona correctamente y de realizar las correciones y revisiones manuales pertinentes.

  Existen algunas organizaciones con un objetivo similar al nuestro, por ejemplo, _factcheck.org_ o _maldita.es_. Estas organizaciones también son organizaciones sin ánimo de lucro que buscan mitigar el problema de la desinformación. En el caso de _factcheck.org_ el cuál se financia por medio de fundaciones con mayores recursos como la _Annenberg Foundation_. También aceptan donanciones de individuos y de manera ocasional de empresas como _Meta_ y _Google_ cuando lanzan campañas concretas de lucha contra la desinformación @factcheck_funding. El caso de _maldita.es_ es bastante similar, de manera ocasional colabora con empresas que permiten mantener el proyecto a flote siempre y cuando el acuerdo con estas empresas permita a la organización mantener su independencia y transparencia @maldita_funding.

  Inevitablemente si queremos que el proyecto sea plausible vamos a tener que recurrir a organizaciones que nos puedan financiar. Para evitar conflictos de interés debemos de elaborar políticas internas que regulen de manera estricta el alcance de estas colaboraciones para garantizar nuestra integridad y transparencia hacia el usuario.

  = Legislación sobre la IA

  Es imposible conocer bajo que legislación nos regiremos dentro de 10 años. Si bien ya existe una legislación vigente que regula el uso de la IA a nivel europeo (IA Act), la cual entró en vigor en 2024, nadie puede garantizar que sea actualizada o revisitada dentro de un par de años conforme la IA evoluciona. Otro aspecto importante es la protección de datos y la _GPDR_.

  Si bien el riesgo de que nuestro proyecto se vuelva ilegal en un par de años es una posibilidad remota, la probabilidad no es igual a 0. Y es que recientemente se han planteado medidas que de manera camuflada amenazan la libertad de expresión. Un ejemplo de esto es la _EU Kids Act_. Estas medidas a nivel superficial paracen buenas que ya buscan proteger a los niños, pero que numerosas organizaciones han criticado, ya que suponen un riesgo para la privacidad y libertad @edri.

  Si esta clase de movimientos y proyectos se extienden y son aprobados, nada nos garantiza que de aquí a 10 años no podamos realizar nuestra labor de manera transparente e independiente, sin ningún tipo de coaxión legal.

]
