# Contribuir a TheTruthChain

TheTruthChain (TTC) es un sistema de construcción de conocimiento cuya corrección depende de preservar la procedencia, la trazabilidad y la separación entre hecho extraído e inferencia. Una contribución no está terminada porque funcione en el caso feliz: está terminada cuando la invariante relevante es explícita, está probada y se conserva al reconstruir el grafo.

## Antes de empezar

- Lee el [README](README.md).
- Lee la arquitectura del Sprint 2: [`sprint2/anexo_a_arquitectura.typ`](sprint2/anexo_a_arquitectura.typ).
- Lee [SECURITY.md](SECURITY.md) si el cambio toca datos, prompts, URLs, scraping, credenciales o despliegues.
- Lee el [Código de Conducta](CODE_OF_CONDUCT.md).
- La rama de desarrollo activa es `main`.
- Usa la documentación de los sprints para orientarte antes de proponer cambios grandes.

## Qué valoramos

1. **Preservar la corrección, no solo que el código se ejecute.** Una extracción fallida, parcial o con claves distintas no debe sobrescribir estado válido ni envenenar cachés incrementales.
2. **Preservar la procedencia; la riqueza incidental no es evidencia.** Un registro con fuente real no debe perder frente a un resultado más rico pero sin fuente. Una ubicación sin el fichero o la URL original no es procedencia suficiente.
3. **Mantener la extracción determinista.** El orden de ficheros, el entorno, la red o la salida no determinista de un modelo no deben cambiar el resultado estructural.
4. **Mantener la inferencia visiblemente separada del hecho extraído.** No conviertas incertidumbre en certeza falsa porque el resultado parezca más completo.
5. **Preferir un comportamiento fail-closed antes que inventar relaciones.**
6. **Tratar el grafo y las cachés como datos que se pueden corromper.**
7. **Hacer que un bug fix demuestre el fallo antiguo con un test de regresión.** No basta con comprobar que el código nuevo funciona.
8. **Mantener PRs estrechos y revisables.** Los cambios pequeños y auditables son mejores que los arreglos amplios y clever.
9. **Documentar los límites de las heurísticas y los casos no soportados.**
10. **No editar a mano artefactos generados.** Edita la fuente, ejecuta el generador y las comprobaciones correspondientes.
11. **No permitir que el entorno del contribuyente afecte a los tests.** Los tests deben ser deterministas respecto al shell de quien los ejecuta.
12. **Tratar rutas, texto de fuentes, salida de modelos, URLs y comandos generados como no confiables.** Nunca construyas comandos de shell o código interpolando texto libre.
13. **Comprobar el comportamiento multiplataforma** si tocas ficheros, procesos o instalación. Que funcione en Linux no demuestra que sea seguro en Windows o macOS.
14. **Actualizar la documentación cuando cambie el comportamiento o las invariantes.** La documentación forma parte del contrato del proyecto.
15. **Usar TTC para entender TTC**, salvo cuando el grafo sea precisamente lo que se está depurando.

## Arquitectura del repositorio

- **Documentación**: `sprint1/`, `sprint2/`, `sprint3/` y `sprint4/`, escrita en Typst.
- **Arquitectura**: [`sprint2/anexo_a_arquitectura.typ`](sprint2/anexo_a_arquitectura.typ).
- **Pipeline previsto**: extracción → preprocesamiento → grafo de conocimiento → motor de inferencia → informes → interfaz.
- **PDFs compilados**: se generan con `./build.sh` y se publican en la rama `documents`.
- **Código**: cuando se incorpore, esta sección listará las rutas de cada módulo. No inventes rutas nuevas sin acordarlo antes en una issue.

## Puesta en marcha

El repositorio contiene por ahora documentación en Typst. Para compilarla:

```bash
# Comprueba que tienes Typst instalado
typst --version

# Compila todos los documentos
./build.sh

# Compila un documento concreto en un PDF temporal
typst compile --root . sprint4/main.typ /tmp/sprint4.pdf
```

Cuando se incorpore código, este documento indicará el gestor de dependencias, la versión del lenguaje y los comandos de test y lint. No añadas un stack nuevo sin justificarlo en una issue y actualizar esta sección.

## Trabajar en el proyecto

- **No dupliques documentación.** Si un detalle ya está en un apéndice, enlázalo en lugar de copiarlo.
- **Mantén la trazabilidad.** Cada afirmación técnica debe poder rastrearse hasta una fuente, un experimento o una decisión documentada.
- **Actualiza los artefactos derivados.** Si cambias un `.typ`, recompila el PDF correspondiente; no edites el PDF a mano.
- **Respeta los límites del corpus.** No crees una segunda interpretación de qué fuentes entran en el sistema. Reutiliza las reglas de ingesta y descarte que ya existan.
- **Cuida la portabilidad.** Separadores de ruta, enlaces simbólicos, rutas absolutas y relativas, y codificaciones deben funcionar en los entornos que el proyecto soporte.

## Hacer un cambio

1. Busca o crea una issue.
2. Reproduce el problema.
3. Identifica la invariante que se está rompiendo.
4. Haz el arreglo más pequeño posible.
5. Añade un test de regresión o una comprobación reproducible.
6. Ejecuta los tests concretos.
7. Ejecuta la suite completa.
8. Ejecuta lint y comprobaciones de tipos cuando existan.
9. Regenera los artefactos si has tocado sus fuentes.

## Tests y comprobaciones

- **Documentación**: compila el documento afectado y revisa que no se rompen referencias ni enlaces.
- **Datos**: incluye la fuente, la fecha, la licencia y un comando o notebook que permita reproducir la extracción.
- **Modelos y prompts**: documenta el objetivo, las entradas, las salidas, las métricas y las limitaciones. Incluye ejemplos de fallo, no solo de éxito.
- **Código**: cuando exista, se usará `pytest` o la herramienta que se acuerde. Los tests deben aislarse del entorno y no depender de servicios externos.
- **Regresión**: el test debe fallar antes del arreglo y pasar después.

## Reglas de integridad de datos

- **Guarda de cero nodos**: debe ejecutarse antes de escribir.
- **Guarda de reducción**: no se debe persistir un grafo más pequeño si parece corrupto. Las escrituras forzadas pueden saltarse esta comprobación y deben justificarse.
- **Consistencia de caché**: debe mantenerse entre rutas absolutas y relativas.
- **Procedencia**: nunca se pierde al actualizar o fusionar.
- **Aristas entre ficheros**: deben conservarse en actualizaciones incrementales, aunque el número de nodos no cambie.
- **Fuentes retiradas**: si una fuente se elimina o reserva sus derechos para TDM, hay que revisar el material ya incorporado.

## Seguridad

- Revisa [SECURITY.md](SECURITY.md).
- Cualquier cambio que toque prompts, comandos de shell, subprocesos, ingesta de URLs, manejo de rutas o serialización debe revisarse como un cambio sensible a seguridad.
- No interpoles contenido no confiable en shell, SQL, plantillas o código.
- No subas secretos, credenciales ni datos personales.

## Mensajes de commit

Usa un prefijo de [Conventional Commits](https://www.conventionalcommits.org/):

- `feat: añade extracción de fuentes RSS`
- `fix: corrige la normalización de fechas`
- `docs: actualiza el apéndice de licencias`
- `data: incorpora el dataset de fuentes oficiales`
- `model: ajusta el prompt de clasificación`
- `chore: actualiza dependencias`

El asunto debe describir el cambio. Explica el porqué en el cuerpo cuando no sea obvio y referencia la issue o el PR correspondiente.

**Declaración de autoría con IA**: si un asistente de IA ha contribuido materialmente a la implementación, decláralo en el commit con `Co-Authored-By:` y en la plantilla del PR. No atribuyas código a un modelo que no ha contribuido. Si el trabajo se enmarca en la asignatura, añade también el enlace público al log de uso de IA.

## Pull requests

- Un solo tema por PR.
- Sin cambios no relacionados.
- Describe el problema, la implementación y la verificación.
- Enumera los comandos que has ejecutado realmente.
- Documenta limitaciones y casos no soportados.
- Mantén la descripción sincronizada con la implementación final.
- Resuelve conflictos antes de pedir la revisión final.
- Firma los commits con `git commit -s` (DCO).

## Trabajar con agentes de IA

Los asistentes de IA son bienvenidos, pero todas las reglas de esta guía se aplican al código que escriben, y tú sigues siendo la persona autora del PR.

- Antes de cambiar nada, apunta al agente a este documento y a la arquitectura del Sprint 2.
- Trabaja desde `main`, mantén el PR en un solo tema y no dejes que un agente edite a mano artefactos generados.
- En bug fixes, confirma que el test de regresión falla sin el arreglo, no solo que pasa con él.
- Ejecuta tú mismo las comprobaciones antes de abrir el PR.
- Declara la ayuda material de IA con `Co-Authored-By:` y, si aplica, con el enlace público al log.
- Escribe tú la descripción del PR y enumera los comandos que realmente ejecutaste.

## Reportar issues

### Bugs

Incluye versión o commit exacto, entorno, reproducción mínima, resultado esperado y real, logs y, si aplica, artefactos del grafo o de la caché. Indica si se reproduce en un checkout limpio.

### Propuestas de mejora

Empieza por el problema, no por la solución. Describe el comportamiento propuesto, las alternativas y las consideraciones de compatibilidad.

### Datos y modelos

Incluye procedencia, licencia, condiciones de uso, privacidad, cobertura, sesgos conocidos, métricas y limitaciones. No adjuntes datos personales ni material sin licencia.

## Expectativas de revisión

Se revisan la corrección, la cobertura de regresión, el alcance, el determinismo, la procedencia, la seguridad y la documentación. La revisión es un espacio de aprendizaje: los comentarios buscan mejorar el cambio, no descalificar a quien lo envía.

## Artefactos generados

- **Qué se regenera**: los PDFs de los documentos a partir de los `.typ`.
- **Qué no se edita a mano**: los PDFs compilados.
- **Qué no se sube**: cachés locales, credenciales, datos temporales o artefactos que no formen parte de la entrega.

## Dónde pedir ayuda

- **Issues**: busca antes de abrir una nueva.
- **Discussions**: para preguntas abiertas y debate, si están habilitadas.
- **Seguridad**: usa el reporte privado de [SECURITY.md](SECURITY.md), no una issue pública.
- **Conducta**: usa el canal del [Código de Conducta](CODE_OF_CONDUCT.md).

## Para seguir leyendo

- [README.md](README.md)
- [Arquitectura del Sprint 2](sprint2/anexo_a_arquitectura.typ)
- [SECURITY.md](SECURITY.md)
- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)
- [LICENSE](LICENSE)
- [Documentación del Sprint 4](sprint4/)
