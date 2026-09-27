//====== CONFIGURACIÓN =================

#set text(lang:"es")

// Justificar el texto
#set par(justify: true,)

// Enumerar headings
#set heading(numbering: "1.1")

// Enumerar páginas
#set page(numbering: "1")

//======================================

// portada reutilizable (título, número de sprint)
#import "../template/portada.typ": portada
#portada("Especificación", 1)

// indice
#outline(title: "Índice")
#pagebreak()



// parte principal en otros ficheros
#include "integrantes.typ"
#include "nombre_descripcion.typ"
#include "innovacion.typ"
#include "uso_ia.typ"
#include "riesgos_desafios_eticos.typ"
#include "organizacion.typ"

// ... 

// referencias
#pagebreak()
#bibliography("biblio.bib",style: "ieee")