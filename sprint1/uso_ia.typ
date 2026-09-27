== Uso de IA
En cuanto al uso de IA, el sistema utilizará LLMs para analizar noticias y declaraciones de personas públicas, 
identificar sus afirmaciones principales y comparar cómo distintas fuentes presentan un mismo hecho. 
También intentará localizar la fuente original de la información y mostrar al usuario de dónde procede cada dato.

El sistema podrá detectar contradicciones, diferencias de contexto y posibles sesgos entre fuentes, 
generando un resumen comparativo que ayude al usuario a formarse su propia opinión. 
Cada conclusión estará vinculada a las fuentes originales y el sistema evitará afirmar algo cuando no exista evidencia suficiente.

== Tecnlogía usada

Para obtener los datos de diferentes fuentes, se hará uso de web scraping, feeds RSS @RSS y APIs cuando estas estén disponibles. 
En el caso de los LLMs, se podrá realizar fine-tuning de un modelo abierto para mejorar tareas concretas como la comparación entre fuentes y la generación de informes. 

Además, se utilizarán técnicas de RAG @AI-fact-checking para proporcionar al modelo únicamente las fuentes relacionadas con cada acontecimiento. 
Para almacenar y consultar la información se podrán utilizar tecnologías como PostgreSQL, pgvector o Elasticsearch @elasticsearch, 
mientras que Python, FastAPI y Docker facilitarán el desarrollo y despliegue del sistema.
