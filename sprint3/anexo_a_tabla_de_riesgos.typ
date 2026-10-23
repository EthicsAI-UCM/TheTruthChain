#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 3
#let anexo = "A"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 26)
#let nombre = "Tabla Riesgos"
#let bibliografia = path("biblio.bib")


#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[

  = Tabla de Riesgos

  Para valorar cada riesgo usamos una escala de tres niveles de gravedad y probabilidad, suponiendo un escenario de cientos de millones de usuarios:

  #text(size: 9pt)[
    #table(
      columns: (1.5cm, 1fr, 1fr),
      inset: 5pt,
      table.header([*Nivel*], [*Gravedad*], [*Probabilidad*]),
      [Baja], [Molestia puntual que se corrige sin consecuencia.], [Poco probable incluso a gran escala.],
      [Media], [Daño real pero limitado y reparable.], [Puede ocurrir.],
      [Alta], [Daño grave, masivo o difícil de revertir.], [Casi seguro a gran escala.],
    )
  ]

  Ya con las escalas definidas:

  #text(size: 9pt)[
    #table(
      columns: (2cm, 1fr, 1.8cm, 3cm, 1fr, 1fr),
      inset: 5pt,
      align: (left, left, center, center, left, left),
      table.header(
        [*Nombre*], [*Descripción*], [*Gravedad*], [*Probabilidad*],
        [*Prevención*], [*Contingencia*],
      ),

      [*Difamación*],
      [Error en los informes (citas mal atribuidas, fuera de contexto o mal ordenadas) dañan la reputación de una persona ante millones de usuarios.], 
      [Alta], 
      [Alta], 
      [
        - Enlazar cada afirmación a su fuente original.
        - Mostrar citas literales, evitar parafraseo.
        - Revisión humana en los informes más consultados.
      ], 
      [
        - Canal de rectificación con respuesta pública.
        - Mostrar la corrección a quienes vieron el original.
      ],

      [*Desigualdad Regional*],
      [Sesgo por falta de variabilidad en las fuentes de una región o idioma.], 
      [Media], 
      [Alta], 
      [
        - Indicar cuántas fuentes respaldad el informe y país de origen.
        - No publicar con fuentes escasas o poco variadas.
        - Aviso del posible sesgo.
      ], 
      [
        - Revisar los informes afectados.
        - Buscar fuentes adicionales en la región concreta.
      ],

      [*Desinformación Coordinada*], 
      [Actores malicioso inundan las fuentes con contenido falso para que TTC lo recoja y lo amplifique.], 
      [Alta], 
      [Alta], 
      [
        - Detectar picos de publicaciones similares.
        - Priorizar fuentes fiables y documentos primarios.
      ], 
      [
        - Excluir las fuentes implicadas y generar los informes afectados.
        - Avisar a los usuarios. Publicar caso detectado.
      ],

      [*Guerra Informativa*], 
      [Entidades de poder presionan a la ONG para imponer una visión sesgada con apariencia objetiva.], 
      [Alta], 
      [Media], 
      [
        - Código abierto verificable.
        - Diversificar la financiación.
      ], 
      [
        - Hacer pública cualquier tipo de presión o bloqueo.
        - Publicar informes de transparencia sobre peticiones recibidas.
      ],

      [*Monopolización*], 
      [TTC. se convierte en la fuente única de información y define cómo entiende la realidad gran parte de la población.], 
      [Alta], 
      [Baja], 
      [
        - Metodología pública y reproducible.
        - No proporcionar conclusiones y mostrar diferentes puntos de vista.
      ], 
      [
        - Colaborar y apoyar herramientas alternaivas.
        - Someterse a auditorías externas.
      ],

      [*Exceso de Confianza*], 
      [Los usuarios aceptan el informe sin consultar fuentes originales], 
      [Media], 
      [Alta], 
      [
        - Interfaz que lleva a las fuentes originales.
        - Recordar las limitaciones dle informe.
      ], 
      [
        - Medir cuántos usuarios consultan las fuentes. Realizar cambios a partir de ese indicador.
      ],

      [*Prompt Injection*], 
      [Una fuente incluye instrucciones ocultas que manipulan al modelo de lenguaje al procesarla], 
      [Media], 
      [Media], 
      [
        - Limpiar el texto de las fuentes.
        - Separar instrucciones y contenido en el _Prompt_.
      ], 
      [
        - Excluir la fuente y regenerar los informes afectados.
        - Añadir patrón detectado a los filtros.
      ],

      [*Información remanente*], 
      [Contenido retirado o corregido sigue apareciendo en los informes porque se conserva en la base de conocimiento.], 
      [Media], 
      [Media], 
      [
        - No guardar copias completas de los contenidos.
        - Definir un proceso de borrado que recorra todas las capas.
      ], 
      [
        - Retirar de inmediato los informes afectados.
        - Identificar la capa en la que falló el borrado y corregir.
        - Informar a los usuarios de lo ocurrido y cómo se ha corregido.
      ],
    )
]
]
