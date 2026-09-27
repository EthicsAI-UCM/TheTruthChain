#let document(
  body,
  nombre: "Dummy",
  sprint: 0,
  anexo: none,
  fecha_entrega: none,
  bibliografia: none,
) = {
  set text(lang: "es")
  set par(justify: true)
  set heading(numbering: "1.1")
  set page(numbering: "1", margin: (top: 2cm, bottom: 2cm, left: 2.3cm, right: 2.3cm))

  import "portada.typ": portada
  portada(nombre, sprint, anexo: anexo, fecha_entrega: fecha_entrega)
  body
  if bibliografia != none {
    pagebreak()
    bibliography(bibliografia, style: "ieee")
  }
}
