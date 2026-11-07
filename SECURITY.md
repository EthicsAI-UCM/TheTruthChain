# Política de seguridad de TheTruthChain

TTC se toma en serio la seguridad. Esto incluye proteger la plataforma, los datos y a las personas que la usan, y también tener un proceso claro para reportar vulnerabilidades y recibir actualizaciones cuando se publiquen correcciones.

## Versiones soportadas

TTC está en desarrollo y todavía no mantiene una rama estable. Mientras no exista una release:

- `main` recibe las correcciones de seguridad.
- No hay backports a versiones anteriores.

Cuando se publique la primera versión estable, esta tabla indicará qué versiones reciben correcciones. Como orientación, se mantendrá la última versión menor y la anterior.

| Versión | Soportada |
| --- | --- |
| `main` (desarrollo) | Sí, con correcciones |
| Versiones anteriores | No |

## Reportar una vulnerabilidad

**No abras un issue público si el problema es una vulnerabilidad de seguridad.**

Usa uno de estos canales privados:

1. **GitHub Private Vulnerability Reporting**, habilitado en el repositorio
2. **Correo:** security@thetruthchain.com

Si no recibes respuesta en 30 días, vuelve a escribir a security@thetruthchain.com indicando “URGENTE” y contacta con el responsable de seguridad del proyecto. No detalles la vulnerabilidad en canales públicos.

### Qué incluir en el informe

- descripción del problema y del componente afectado;
- versión, rama o despliegue donde se reproduce;
- pasos para reproducirlo, prueba de concepto o capturas;
- impacto que crees que tiene;
- si conoces alguna mitigación o corrección posible;
- cómo quieres que te acreditemos, si quieres aparecer en el aviso.

No incluyas datos personales reales, no accedas a cuentas o datos de otras personas y no interrumpas el servicio durante la investigación. Si accedes accidentalmente a información sensible, detente y avísanos.

### Qué puedes esperar

- acuse de recibo: **3 días laborables**;
- primera valoración: **7 días laborables**;
- actualizaciones del caso: cada **10 días laborables** mientras siga abierto;
- resolución o plan de divulgación: **90 días naturales** desde el informe, salvo que acordemos otro plazo.

Si el problema está siendo explotado activamente, priorizaremos la corrección y adaptaremos los plazos.

## Proceso de divulgación

1. Recibimos el informe y asignamos una persona responsable del caso.
2. Confirmamos el problema y determinamos qué versiones están afectadas.
3. Revisamos el código y los componentes relacionados para detectar problemas similares.
4. Preparamos la corrección en privado, sin publicarla antes del aviso coordinado.
5. Publicamos un GitHub Security Advisory y, cuando corresponda, una nueva release con la corrección.
6. Acreditamos a la persona que reportó el problema si así lo desea.

Si el caso afecta a una dependencia externa, coordinaremos la divulgación con el proyecto correspondiente. No publicaremos detalles antes de que exista una corrección o una mitigación razonable.

## Recibir avisos de seguridad

La forma más rápida de recibir los avisos es seguir las *security advisories* del repositorio en GitHub y las releases del proyecto. También puedes solicitar recibir avisos por correo escribiendo a security@thetruthchain.com.

Nadie fuera del equipo de seguridad y de la persona que reportó el problema conocerá los detalles antes de que se levante el embargo. No hacemos excepciones para sitios grandes o importantes: cualquier divulgación antes de tiempo puede provocar un fallo de seguridad.

## Alcance

### En alcance

- vulnerabilidades en el código del repositorio y en sus dependencias;
- autenticación, autorización y control de acceso;
- exposición de datos personales o internos;
- inyección de código, comandos o consultas;
- fuga de claves, tokens o credenciales;
- *prompt injection* y manipulación de las respuestas del sistema;
- envenenamiento de datos o de fuentes que alimentan el grafo de conocimiento;
- problemas de privacidad derivados del tratamiento de información pública.

### Fuera de alcance

- la exactitud o la veracidad de la información que muestra el sistema (no es una vulnerabilidad de seguridad);
- reclamaciones de copyright, marcas o patentes: usa el canal de reclamaciones del Sprint 3;
- spam, contenido promocional o abuso de las normas de la comunidad: usa el Código de Conducta;
- informes automáticos de escáneres sin impacto demostrado;
- ataques de denegación de servicio, ingeniería social o ataques físicos;
- vulnerabilidades en servicios de terceros: repórtalas al proveedor correspondiente y, si nos afectan, avísanos.

## Investigación de buena fe

Consideramos investigación de buena fe la que:

- se hace con el objetivo de mejorar la seguridad del proyecto;
- no accede a datos de otras personas ni los modifica;
- no interrumpe el servicio ni destruye información;
- no utiliza ingeniería social, phishing ni ataques físicos;
- se limita a la prueba de concepto mínima necesaria;
- nos da un plazo razonable para corregir el problema antes de publicarlo.

No tomaremos acciones legales contra quien investigue de buena fe y cumpla estas condiciones. Si tienes dudas sobre si una prueba está dentro de este marco, pregúntanos antes de realizarla.

## Recompensas

TTC no ofrece recompensas económicas por vulnerabilidades. Sí reconocemos públicamente la contribución en el aviso de seguridad, si la persona que reporta lo desea.

## Contacto

- **Informes de seguridad:** security@thetruthchain.com
- **GitHub:** https://github.com/EthicsAI-UCM/TheTruthChain/security/advisories/new
- **Responsable de seguridad:** Jorge
- **Suplente:** Yao

Para asuntos de conducta, usa el canal del Código de Conducta. Para propiedad intelectual, usa el canal de reclamaciones.
