
;Comprobar si consigue assignar teniendo en cuenta los libros leidos
(define (problem libros-prob)
  
  (:domain libros-domain)

  (:objects
     lib1 lib2 lib3 lib4 lib5 lib6 lib7 lib8 lib9 lib10 lib11 lib12 lib13 lib14 - libro
    mes1 mes2 mes3 mes4 mes5 mes6 mes7 mes8 mes9 mes10 mes11 mes12 - mes
  )

  (:init
  
    (quiereleer lib3)
    (quiereleer lib2)
    (quiereleer lib7)
    (paralelos lib1 lib2)
    (paralelos lib2 lib14)
    (predecesor lib2 lib4)
    (predecesor lib4 lib3)
    (predecesor lib2 lib3)
    (predecesor lib7 lib6)
    (libroleido lib6)
  ) 

  (:goal (and
            (planeado lib3)
            (planeado lib2)
            (planeado lib7)
         )
  )
)