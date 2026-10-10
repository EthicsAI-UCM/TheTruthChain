#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 2
#let anexo = "D"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 11)
#let nombre = "Uso de la IA"
#let bibliografia = none


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
  = Mock-up de la interfaz de usuario

  Se usó la IA para la creación del html `mockup_gui.html`, que contiene un mock-up de la interfaz de usuario 
  de nuestra plataforma. Para ello, se ha utilizado ChatGPT modo _work_, con el modelo GPT-6-Astral con esfuerzo alto.
  
  #h4[link:]
  #pretty_box[
    ```
    https://chatgpt.com/s/cx_6ac8cdbaaab88191a2f25a25a3c89415
    ```
  ]
]



