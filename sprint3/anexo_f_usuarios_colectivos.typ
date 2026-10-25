#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "F"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Usuarios y Colectivos Afectados"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Usuarios
  En esta sección vamos a especificar los diferentes usuarios que usan el sistema, quienes se ven afectados y qué relaciones de poder existen.

  == Tipos de usuarios

  Distinguimos tres grupos de usuarios: 

  - *Público general*: cualquier persona que quiera informarse sobre una persona de interés o un suceso y ver cómo lo presentan las distintas fuentes.
  - *Profesionales de la información*: periodistas y verificadores que usan TTC como herramienta de apoyo en su trabajo, por ejemplo para encontrar la fuente original de una declaración hecha por una persona pública.
  - *Auditores*: Revisan el código abierto y la metodología de selección de fuentes en busca de fallos y sesgos. 

  == Personas afectadas

  - *Personas sobre las que se informa*: Toda persona mencionada en las fuentes de noticias con las que trabajamos: políticos, empresarios, activistas, etc. Pueden ser afectadas por difamaciones.
  - *Medios y periodistas*: TTC utiliza sus contenidos como fuente de datos, así que podría señalar contradicciones en sus trabajos.
  - *La sociedad*: En una gran escala, TTC puede influir en la opinión pública. 

  == Relaciones de poder

  - *ONG frente al usuario*: La ONG decide qué fuentes se recogen y cómo se presenta la información, el usuario no tiene derecho a elegir como ya especificamos en la sección de personalización. Para compensar esto, procuramos elegir fuentes diversas para albergar todo tipo de opiniones y evitar sesgos, y hacer el código abierto.
  - *ONG frente a personas afectadas*: La persona no decide si aparecer en TTC y la carga de detectar errores y proceder con una reclamación recae sobre ella.
  - *Entidades con gran poder frente a la ONG*: Gobiernos, empresas y grupos de interés pueden presionar a la ONG mediante leyes desfavorables, bloquear el servicio o financiar campañas de desinformación. 
    #figure(
    image("recursos/relacion_de_poder.svg", width: 45%),
    caption: [Relaciones de poder existentes entre diferentes grupos.],
  )

  = Colectivos Vulnerables

  == ¿Quiénes son?
  - *Personas con discapacidad*: Aunque TTC intenta ofrecer todo tipo de opciones de accesibilidad a los usuarios que lo necesiten, las fuentes originales pueden no ofrecerlas. Una persona con discapacidad visual puede tener dificultades a la hora de consultar una fuente que no ofrezca funciones de accesibilidad por su propia cuenta.
  - *Personas con baja renta*: Una fuente puede aparecer en una plataforma de noticias de pago, las personas de este grupo pueden tener dificultades a la hora de contrastar la fuente original.
  - *Personas mayores*: Suelen ser las personas con menos experiencia con plataformas digitales e IA. Pueden tener dificultades a la hora de utilizar la plataforma: no saber cómo encontrar las fuentes originales o desconocer de la existencia de una plataforma de reclamación. Intentaremos ofrecer una interfaz que sea sencilla de utilizar y ventanas de información/ayuda. 
  - *Personas con baja alfabetización mediática*: Son aquellas personas que tienen baja capacidad de acceder, analizar, crear y evaluar la información que les llega desde diferentes canales y medios de comunicación @alfabetizacion. Pueden tomar el informe de TTC como una verdad cerrada sin consultar las fuentes orignales.

  == Interseccionalidad
  Los cuatro colectivos comparten la dificultad de contrastar el informe que genera TTC con las fuentes originales. Esta barrera se refuerza cuando una persona pertenece a más de un colectivo, por ejemplo una persona mayor y con baja alfabetización mediática tendrá más dificultades que una persona mayor con buena formación, aunque esta última no sepa cómo manejarse al principio con la herramienta con el paso del tiempo le resultará más sencillo y con su buena formalización mediática podrá contrastar fuentes.
]

