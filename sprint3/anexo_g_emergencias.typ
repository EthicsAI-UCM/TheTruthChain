#import "../lib/document.typ": document

#let sprint = 3
#let anexo = "G"
#let fecha_entrega = datetime(year: 2026, month: 10, day: 25)
#let nombre = "Emergencias"

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo)[
  = Emergencias

  Se considera una emergencia cualquier fallo de TTC que pueda causar un daño grave si la información continúa difundiéndose. TTC contará con un responsable técnico y otro de contenidos. Cualquiera de ellos podrá detener la parte afectada del sistema. Para valorar la gravedad se utilizará la misma escala que en la tabla de riesgos:

  - *Baja*: molestias puntuales sin consecuencias, como errores de formato que no cambian el sentido del informe. Se corrigen sin detener el sistema.
  - *Media*: daños limitados y reparables. Se corregirá el problema y se retirarán los informes afectados cuando sea necesario. Si se identifica una fuente que manipula al modelo, se excluirá y se volverán a generar esos informes.
  - *Alta*: daños graves, masivos o difíciles de revertir, como una atribución falsa que pueda causar un daño reputacional grave o la publicación indebida de datos privados. Cuando se confirme un caso, se suspenderá la difusión de los informes afectados.

  La parada se ampliará al sistema completo si no puede determinarse qué información está afectada o si el fallo no puede aislarse. Se registrará el motivo y se avisará al equipo encargado de revisar lo ocurrido.

  == Revisión humana

  La revisión humana estará garantizada en las emergencias y en todas las reclamaciones recibidas por el canal. El equipo jurídico supervisará la revisión de las reclamaciones. También se mantendrán las revisiones de los informes más consultados y mediáticos, y la revisión previa cuando existan indicios de obtención ilícita de información y posible vulneración de derechos. El equipo comprobará las fuentes y el contexto para decidir qué debe corregirse o retirarse.

  A gran escala, la revisión no abarcará todos los informes. Se dará prioridad a las posibles vulneraciones de derechos y a los casos que puedan causar más daño. Las reclamaciones seguirán los plazos definidos para el canal. Los informes pendientes de revisión o sin fuentes verificables y suficientes no se publicarán. En situaciones como el apagón, mencionado en el debate, se podrá retrasar la incorporación de información mientras se revisan las fuentes.

  == Formas de reparación

  Tras revisar lo ocurrido, se aplicarán las medidas de reparación que correspondan:

  - *Reversión*: se retirarán los informes que contengan el error y se eliminará la información errónea de la base de conocimiento. Solo se recuperarán versiones anteriores que sigan siendo válidas.
  - *Corrección*: se publicará un aviso en el informe explicando el error y los cambios realizados. Se informará a quien haya reclamado y se intentará que la corrección llegue a quienes recibieron la información original.
  - *Compensación*: TTC atenderá las solicitudes de indemnización por los daños causados con el apoyo del equipo jurídico, además de cumplir lo que establezcan los tribunales.
  - *Prevención*: se analizará la causa del error y se revisarán los controles necesarios para evitar que se repita.

  El sistema volverá a funcionar con la autorización de ambos responsables, una vez corregido el fallo y retirada o corregida la información afectada.

]
