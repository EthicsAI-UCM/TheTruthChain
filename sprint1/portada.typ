#page(
   margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm)
 )[
   #align(center)[

     #image("../ucm.png", width: 10cm)

     #v(1.5cm)

     #line(length: 100%, stroke: 0.5pt)
     #v(0.4cm)

     #text(size: 22pt, weight: "bold")[
       Sprint 1
       
       Especificación
     ]

     #v(0.3cm)

     #text(size: 13pt, style: "italic")[
       Ética de Datos e IA
     ]

     #v(0.4cm)
     #line(length: 100%, stroke: 0.5pt)

     #v(1.5cm)

     #text(size: 11pt)[
       #grid(
         columns: 1,
         row-gutter: 0.5cm,
         [*Yao Chen*],
         [*Jiahao Cheng*],
         [*Jorge Hernández Palop*],
         [*Alicia Pereda Bordejé*],
         [*Jiayi Wang*],
       )
     ]

     #v(1.0cm)

     #text(size: 11pt)[
       #datetime.today().display("[day]/[month]/[year]")
     ]
   ]
 ]

 #pagebreak()