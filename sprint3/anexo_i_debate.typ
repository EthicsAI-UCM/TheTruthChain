#import "../lib/document.typ": document

#let sprint = 3
#let anexo = "I"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 25)
#let nombre = "Aspectos del debate"
#let bibliografia = path("biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Tratamiento de eventos de última hora

  En el debate se planteó la situación extrema de un evento como el apagón. En este evento empezó a circular gran cantidad información falsa y bulos durante las primeras horas del evento. Intentar filtrar esta información en un episodio de caos y desconcierto como el que se vivió en esos momentos es extremadamente complicado, díficil y posiblemente imposible. Pero esto no es un problema, TTC no busca estar a la vanguardia de la información, de hecho todo lo contrario. Lo que buscamos con TTC es recopilar toda la información sobre situaciones y personas de relevancia para que no sean olvidados y se tengan en cuenta al tomar decisiones. Es por eso, que no es crítico que el sistema tenga que contar la información más reciente de las últimas horas. Podemos trabajar con información más procesada y con menos ruido, aunque esto implique esperar horas, días e incluso semanas después del evento, ya que nuestro principal objetivo es la recolección de sucesos o hechos a largo plazo.

  = Webscrapping

  También se críticó que el webscrapping es ilegal en España. Esta afirmación es falsa, ya que el artículo 67 del texto refundido de la Ley de Propiedad Intelectual, en la redacción dada por el Real Decreto-ley 24/2021 @rdl242021, recoge expresamente:

  #quote(
    block: true,
    attribution: [Art. 67.1 del texto refundido de la Ley de Propiedad Intelectual, en la redacción dada por el Real Decreto-ley 24/2021, de 2 de noviembre],
  )[
    1\. No será precisa la autorización del titular de los derechos de propiedad intelectual para las reproducciones de obras y otras prestaciones accesibles de forma legítima realizadas con fines de minería de textos y datos.
  ]

  Es decir, la ley no prohíbe el webscraping, y de hecho habilita la reproducción de contenido accesible de forma legítima con fines de minería de textos y datos. Básicamente el uso que hace TTC al recopilar y contrastar información de fuentes públicas.

  = Responsabilidad civil y seguro

  Otra de las cuestiones planteadas en el debate fue quién respondería en caso de recibir una demanda y si el proyecto debería contar con un seguro de responsabilidad civil.

  Se ha estudiado el caso y la responsabilidad caería sobre la entidad que desarrolla y pública el sistema, es decir, TTC. La idea es formar un equipo jurídico que aconseje y desarrollen protocolos de actuación que mitiguen esta problemática. No es necesario contratar un seguro de responsabilidad civil y tampoco es muy útil para muchos casos ya que no se pueden asegurar sanciones administrativas. Además las aseguradoras exigen una serie de requisitos previos que puede que sean complicados de cumplir por nuestra organización debido al sector en el que nos desenvolvemos.

  = Fuentes fiables

  El sistema considera fiable fuentes oficiales, es decir, comunicados oficiales o institucionales de empresas, organismos o personas. La información recabada de periódicos nunca será considerada 100% fiable, salvo en algunos casos muy concretos. Por ejemplo transcripciones de entrevistas con la persona involucrada.
]
