;Comprobar si consigue assignar teniendo en cuenta los libros leidos
(define (problem libros-prob)
  
  (:domain libros-domain)

  (:objects
      lib1 lib2 lib3 lib4 lib5 lib6 lib7 lib8 lib9 lib10 lib11 lib12 lib13 lib14 - libro
      mes1 mes2 mes3 mes4 mes5 mes6 mes7 mes8 mes9 mes10 mes11 mes12 - mes
  )

  (:init
    (siguiente mes1 mes2)
    (siguiente mes2 mes3)
    (siguiente mes3 mes4)
    (siguiente mes4 mes5)
    (siguiente mes5 mes6)
    (siguiente mes6 mes7)
    (siguiente mes7 mes8)
    (siguiente mes8 mes9)
    (siguiente mes9 mes10)
    (siguiente mes10 mes11)
    (siguiente mes11 mes12)
    (siguiente mes12 mes1)
    (quiereleer lib3)
    (quiereleer lib2)
    (quiereleer lib7)
    (quiereleer lib10)
    (quiereleer lib11)
    (predecesor lib2 lib4)
    (predecesor lib4 lib3)
    (predecesor lib2 lib3)
    (predecesor lib7 lib6)
    (paralelo lib2 lib10)
    (paralelo lib10 lib3)
    (libroleido lib6)
  ) 

  (:goal (and
            (planeado lib3)
            (planeado lib2)
            (planeado lib7)
            (planeado lib10)
            (planeado lib11)
         )
  )
)