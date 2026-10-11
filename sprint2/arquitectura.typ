= Arquitectura

Nuestra aplicación permite hacer consultas sobre personas/entidades y temas o sucesos con los que están o han estado implicados. La arquitectura principal será similar a la de un sistema experto. Sin embargo, el motor de inferencia no tendrá solo reglas clásicas si no que serán pipelines basados en modelos de lenguaje. Además habrá un modulo con conexión a Internet que permite obtener nueva información de manera automática o bajo demanda.


#figure(
  image("recursos/Arquitectura.png", width: 100%),
  caption: [Esquema de la arquitectura de la aplicación],
)
