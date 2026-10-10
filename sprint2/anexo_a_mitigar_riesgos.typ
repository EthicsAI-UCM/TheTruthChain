#import "../lib/document.typ": document
#import "../lib/utils.typ": h4, pretty_box

#let sprint = 2
#let anexo = "F"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 11)
#let nombre = "Mitigación de riesgos"

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo)[
  
  = Mitigaciones de Riesgos

  En el Sprint 2, hemos profundizado sobre unos posibles riesgos que se pueden dar al escalar el uso de nuestro sistema. Organizaremos las mitigaciones siguiendo la estructura usada al describir los riesgos correspondientes, en tres grandes bloques.

  == Riesgos derivados de errores del sistema

  *Difamación y daño reputacional masivo*

  Para cada afirmación del informe generado, se enlaza a la fuente original. Las personas afectadas por algún informe tendrán un canal de rectificación que comprobaremos y daremos una respuesta pública. Los informes sobre las figuras o temas más consultados y mediáticos pasarán por revisiones humanas (que solo se asegurarán de que el informe no esté sesgado o haya errores).

  *Desigualdad en la calidad según idioma y región*

  Cada informe indica cuántas fuentes independientes lo respaldan y de qué países proceden. No se publican informes cuando hay muy pocas fuentes o las fuentes tienen origenes poco variados. En caso de publicarse un informe del tipo, siempre se indicará el posible sesgo que puede tener por la falta de fuentes variadas y fiables.

  == Riesgos de manipulación externa

  *Amplificación de desinformación coordinada*

  Se detectará como anomalía cuando hayan publicaciones similares en poco tiempo. Se dará más importancia a fuentes fiables o documentos primarios (actas, comunicados oficiales, etc.).

  *Uso como arma de guerra informativa*

  Se publicarán informes de transparencia con todas las peticiones de modificación de la entidad de poder. Además al ser de código abierto, cualquiera puede comprobar que no se ha manipulado.

  == Riesgos sistémicos de la escala

  *Monopolización de la información*

  De nuevo, al ser código abierto, la metodología es pública y reproducible para otras entidades. Si resulta que nuestro sistema funciona y escala bastante, es razonable que otras entidades vayan a replicarla, de esa forma, TTC solo sería una herramienta más y no la única que pueda monopolizar el mercado.

  *Exceso de confianza*

  En este caso, dejamos una interfaz que lleva al usuario a las fuentes originales, ya sea en algunos casos citando en los informes o en la pestaña Fuentes, donde el usuario podrá consultar todas las fuentes en las que se basa este informe. Siempre recordaremos las limitaciones del sistema y recordaremos que se use el informe como punto de partida y no como una conclusión.
]