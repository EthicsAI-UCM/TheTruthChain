//====== CONFIGURACIÓN =================

#set text(lang:"es")

// Justificar el texto
#set par(justify: true,)

// Enumerar headings
#set heading(numbering: "1.1")

// Enumerar páginas
#set page(numbering: "1")

//======================================

// portada
#include "portada.typ"

// indice
#outline(title: "Índice")
#pagebreak()



// parte principal en otros ficheros
#include "integrantes.typ"
#include "nombre_descripcion.typ"
#include "riesgos_desafios_eticos.typ"
#include "organizacion.typ"
// ... 

// referencias
#pagebreak()
#bibliography("biblio.bib",style: "ieee")