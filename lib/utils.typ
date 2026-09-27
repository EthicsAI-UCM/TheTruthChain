#let pretty_box(body) = {
  block(stroke: black, fill: color.rgb(240, 240, 240), inset: 1em, radius: 8pt)[#body]
}

#let h1(body) = heading(level: 1, numbering: none, body)
#let h2(body) = heading(level: 2, numbering: none, body)
#let h3(body) = heading(level: 3, numbering: none, body)
#let h4(body) = heading(level: 4, numbering: none, body)
#let h5(body) = heading(level: 5, numbering: none, body)
