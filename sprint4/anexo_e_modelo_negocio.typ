#import "../lib/document.typ": document

#let sprint = 4
#let anexo = "E"
#let fecha_entrega = datetime(year: 2026, month: 11, day: 8)
#let nombre = "Modelo de negocio"
#let bibliografia = path("biblio.bib")

#document(sprint: sprint, fecha_entrega: fecha_entrega, nombre: nombre, anexo: anexo, bibliografia: bibliografia)[
= Clientes

Nuestros clientes principales son medios, verificadores, universidades y centros de investigación, bibliotecas y centros educativos, y plataformas tecnológicas que reutilicen los informes a gran escala. *No aceptamos como clientes a partidos políticos, gobiernos, campañas electorales ni _lobbies_*. Son precisamente las entidades sobre las que TTC informa y que tienen poder sobre TTC, como vimos en el Sprint anterior.

= Modelo de negocio

- *Servicios relacionados con el software*:
  - *Una API institucional*: las organizaciones que necesiten un *gran volumen de consultas, disponibilidad garantizada y soporte prioritario* pueden contratar este servicio.
  - *Instancias gestionadas*: este servicio va enfocado a grupos como verificadores y universidades que quieran usar TTC sobre *su propio archivo o sus propias fuentes*. Les ayudamos en el alojamiento y el despliegue en sus propias infraestructuras. Ejecutan *el mismo código que la instancia pública*, bajo la licencia AGPLv3, y cualquier cambio en el código que hagamos para un cliente *se publicará en el repositorio oficial*.
- *Fuentes de ingreso no ligadas al software*: para maximizar los ingresos y garantizar la supervivencia de TTC, aceptaremos financiación de *individuos o fundaciones afines a nuestra misión*. Además, ofreceremos productos de _merchandising_ inspirados en nuestra marca.

== ¿Cómo encaja con nuestras licencias?

- *AGPLv3*: el cliente *no paga por el código*, sino por que alguien opere, mantenga y garantice el buen funcionamiento del servicio en sus infraestructuras.
- *CC BY-SA 4.0*: una entidad que integre nuestros informes tiene que *atribuirlos y mantener la licencia*. Cada integración amplía el alcance de TTC en lugar de competir con él.

== Reglas de independencia

En el Sprint anterior dijimos que necesitábamos reglas para que la financiación no comprometiera la independencia del proyecto. En este Sprint las concretamos de la siguiente forma:

- Ningún cliente ni financiador podrá aportar *más del 10% de los ingresos anuales*.
- *Ningún contrato podrá influir* en las fuentes, los pesos ni el contenido de los informes.
- Crearemos un equipo dedicado exclusivamente a las ventas y la negociación con clientes. Este equipo *no participará en las decisiones sobre fuentes ni en la revisión de informes*.
- Si un cliente intenta condicionar el contenido de TTC, *terminaremos cualquier contrato con él* y publicaremos un informe de transparencia.

= Modelos que no elegimos

== Open Core

El modelo Open Core ofrece una versión básica o con funciones limitadas de un producto como software libre y gratuito, y vende versiones comerciales o complementos como software propietario @open-core.

Descartamos este modelo porque las funciones de pago serían de código cerrado e *imposibles de auditar*. Además, las funciones privativas generan _lock-in_ en el cliente.

== Licencia Dual

Se ofrece el mismo producto bajo una licencia copyleft y, para los clientes que no quieran cumplirla, bajo una licencia comercial.

Este modelo va en contra de nuestra misión, porque un cliente podría modificar el código *sin la obligación de publicar los cambios*.

== Freemium

Este modelo ofrece acceso gratuito a las funciones básicas de una aplicación y varios niveles de suscripción para desbloquear las demás.

No lo incluimos en el modelo de negocio porque añadiría un *muro de pago* a los colectivos de bajos ingresos que identificamos en el Sprint 3. También contradice nuestra visión de un *servicio público y gratuito*, y ata al cliente a las funciones de pago.

= Riesgos de _lock-in_ y conflicto con la comunidad

- *Lock-in*: el código no genera _lock-in_ porque es AGPLv3 y cualquiera puede desplegarlo. El riesgo está en el *grafo de conocimiento*, que no es abierto: quien use nuestra API depende de él y, en una instancia gestionada, el grafo guarda además datos del propio cliente, como su archivo o sus fuentes. Para mitigarlo, el cliente podrá *exportar sin coste* sus datos y los informes que usa en formatos abiertos y con un esquema público, y reconstruir su propio grafo con nuestro código de extracción.

- *Conflicto con la comunidad*: parte de la comunidad puede pensar que publicamos el código pero nos quedamos con lo que tiene valor, el grafo de conocimiento. Para evitarlo explicaremos públicamente por qué no lo publicamos completo: contiene *artículos de prensa protegidos por derechos de autor y datos personales* de personas públicas. A cambio publicaremos *su esquema, los informes con sus fuentes bajo CC BY-SA 4.0 y el código de extracción*, para que cualquiera pueda construir su propio grafo.
]
