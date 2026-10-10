= Mock-up de la interfaz de usuario

A continuación se presenta un mock-up de la interfaz mínima de nuestro proyecto, ilustrado mediante un caso ficticio sobre una propuesta de transporte público gratuito.


  #figure(
    image("recursos/mockup_gui_1.png", width: 100%),
    caption: [Pestaña Informe],
  )
  #figure(
    image("recursos/mockup_gui_3.png", width: 100%),
    caption: [Pestaña Informe: resumen],
  )
  #figure(
    image("recursos/mockup_gui_2.png", width: 100%),
    caption: [Pestaña Fuentes],
  )

La interfaz se organiza en dos pestañas, Informe y Fuentes. La pestaña Informe presenta las declaraciones y los documentos relevantes en orden cronológico, indicando la fecha y el origen correspondiente. El informe termina con un resumen, que reúne los puntos principales mediante citas identificadas. El objetivo es organizar la información con la mínima transformación necesaria, sin presentar el resumen como un veredicto ni sustituir el criterio del usuario.

La pestaña Fuentes reúne las referencias utilizadas en el informe e identifica cada una mediante su título, la persona o entidad responsable y la fecha de publicación. Cada fuente se puede desplegar para leer el fragmento citado y abrir el contenido original. También se puede consultar su información al pasar el cursor sobre una referencia del informe.