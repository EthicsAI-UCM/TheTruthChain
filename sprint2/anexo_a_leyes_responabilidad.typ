#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 2
#let anexo = "B"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 11)
#let nombre = "Responsabilidad legal"
#let bibliografia = path("./biblio_anexob.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  


= Responsabilidad legal
Nuestra IA encaja en la categoría de Riesgo limitado @aesia_reglamento_ia, en la que debemos cumplir con las funciones de informar al usuario de que está interactuando con una IA y de transparencia. 


Durante el debate nos comentaron la Ley Orgánica 1/1982, de 5 de mayo, de protección civil del derecho al honor @ley_1982, a la intimidad personal y familiar y a la propia imagen. Esta ley es importante debido a que nos explica quién tendría la responsabilidad en el caso de difamamación o ataque al honor de alguien. Tras analizarla, algunos puntos que pueden ser importantes tener en cuenta o conocer son:
 
Primero, tener muy claro que todo el mundo tiene derecho a proteger y defender su imagen, su reputación, su intimidad y su honor. Estos son derechos a los que uno no puede renunciar pero sí puede dar ciertos permisos y consentimiento para que se compartan aspectos de su vida privada. También tener en cuenta, que hay casos que se llevarán por la vía penal y no por la civil. Además, en el artículo 2 queda expuesto que no existe una definición fija de lo que sería ofender el honor de alguien, sino que queda sujeto o varía según el tiempo, contexto social o la propia persona. También se declara que el titular puede retirar el permiso dado pero tendrá que pagar los beneficios que la otra parte esperaba ganar (por ejemplo en una campaña publicitaria). Existen casos en los que meterse con la imagen de alguien no es ilegal, como cuando exige interés público fijado por ley o cuando la propia persona da su permiso expreso. Asimismo, contempla el caso del fallecimiento de una persona, porque sus derechos se extinguen legalmente, pero en este caso la ley sigue protegiendo su memoria. Si la ofensa es después de morir, podrá demandar, primero el encargado en su testamento, si no se nombró a nadie, su familia y finalmente incluso el  Ministerio Fiscal con una limitación temporal que se ha estimado prudente, unos 80 años. Si es antes de la muerte y el fallecido no denunció y no había una razón (como una lesión grave) que le impidiese hacerlo, ahí ya no sería válida una demanda.

A continuación en el *capítulo 2*, está la parte que más nos interesa a nosotros. En el artículo 7 @ley_1982 se explica lo que se considera una intromisión ilegítima. Entre algunas causas se encuentran la colocación de cámaras o grabadoras para conocer datos privados de la vida de una persona, la utilización de esos recursos, revelación, captación o divulgación de datos privados, utilización de la imagen o voz con fines comerciales, e *insultar o difundir falsedades que atenten contra la dignidad de una persona o la humillen*.

El artículo 8 completo @ley_1982:

#text(
  size: 10pt,
  fill: blue,
  style: "italic",
)[Uno. No se reputará, con carácter general, intromisiones ilegítimas las actuaciones autorizadas o acordadas por la Autoridad competente de acuerdo con la ley, ni cuando predomine un interés histórico, científico o cultural relevante.

Dos. En particular, el derecho a la propia imagen no impedirá:

a) Su captación, reproducción o publicación por cualquier medio cuando se trate de personas que ejerzan un cargo público o una profesión de notoriedad o proyección pública y la imagen se capte durante un acto público o en lugares abiertos al público.

b) La utilización de la caricatura de dichas personas, de acuerdo con el uso social.

c) La información gráfica sobre un suceso o acaecimiento público cuando la imagen de una persona determinada aparezca como meramente accesoria.

Las excepciones contempladas en los párrafos a) y b) no serán de aplicación respecto de las autoridades o personas que desempeñen funciones que por su naturaleza necesiten el anonimato de la persona que las ejerza.]

Creemos que este artículo es fundamental para nuestro proyecto debido a que establece las situaciones en las que sí se permite captar y publicar noticias sin consentimiento, especialmente si se trata de personas públicas en actos o lugares públicos, o cuando existe existe un *interés histórico o cultural de relevancia*. Aun así, no se permite vulnerar otros derechos fundamentales (respetar lo explicado sobre el artículo anterior sobre las intromisiones ilegítimas) y las noticias deben ser proporcionales a los hechos. 

Finalmente en el artículo nueve @ley_1982 se esclarecen las *consecuencias de difamar a alguien*. ¿Qué tendríamos que hacer en este caso? 
Pues aquí se pone de manifiesto que no es suficiente retirar el contenido, el juez puede obligar a la empresa/organización a publicar la sentencia o una parte de esta con la misma difusión o incluso puede obligar a pagar al afectado con todo el beneficio obtenido de este fallo. 

== Características u opciones que pensamos en añadir a nuestro producto  
#[
  #h(1.5em) 1 Antes de elaborar un informe, TTC deberá verificar las fuentes: se deberá comprobar el origen, y cuando sea posible cómo se obtuvo la información (declaraciones públicas, actos oficiales, filtraciones), asegurarse de que no ha habido manipulación, evaluar la relevancia de la información para la ciudadanía e identificar posibles indicios de intromisión ilegítima. Diferenciamos entre lo fiable que es una fuente y la legalidad de la obtención de su información. 

  Por lo tanto, cuando existan indicios de que efectivamente la obtención de los datos no es lícita y hay incertidumbre sobre si se vulnera el derecho al honor o a la intimidad, se activará un mecanismo de revisión humana antes de autorizar su publicación.

  #h(1.5em)2 Al analizar posibles contradicciones e incoherencias, tener especial cuidado con que las atribuciones de declaraciones a las personas sean correctas, que se refieran al mismo tema y que se conozcan todas las fechas y el contexto. 

  #h(1.5em)3 Para nosotros es muy importante la reproducibilidad, el informe contendrá elementos como la versión del modelo, fecha de consulta o criterios de búsqueda para que se pueda reconstruir los resultados. De esta forma nos facilita detectar y corregir errores en los informes. 
]

Sin embargo, esta ley no establece quién es responsable cuando una IA genera contenido que vulnera el derecho al honor y a la intimidad. No determina si la responsabilidad recae en el desarrollador, la empresa, etc. 
]