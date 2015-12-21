;Comprobar si consigue assignar teniendo en cuenta los libros leidos
(define (problem libros-prob)
  
  (:domain libros-domain)

  (:objects
      lib1 lib2 lib3 lib4 lib5 lib6 lib7 lib8 lib9 lib10 lib11 lib12 lib13 lib14 - libro
      mes1 mes2 mes3 mes4 mes5 mes6 mes7 mes8 mes9 mes10 mes11 mes12 - mes
  )

  (:init
    (= (numMes mes1) 1)(= (numMes mes2) 2)(= (numMes mes3) 3)(= (numMes mes4) 4)(= (numMes mes5) 5)(= (numMes mes6) 6)
    (= (numMes mes7) 7)(= (numMes mes8) 8)(= (numMes mes9) 9)(= (numMes mes10) 10)(= (numMes mes11) 11)(= (numMes mes12) 12)
    (= (mesAsig lib1) 0)(= (mesAsig lib2) 0)(= (mesAsig lib3) 0)(= (mesAsig lib4) 0)(= (mesAsig lib5) 0)(= (mesAsig lib6) 0)
    (= (mesAsig lib7) 0)(= (mesAsig lib8) 0)(= (mesAsig lib9) 0)(= (mesAsig lib10) 0)(= (mesAsig lib11) 0)(= (mesAsig lib12) 0)
    (= (mesAsig lib13) 0)(= (mesAsig lib14) 0)
    (quiereleer lib3)
    (quiereleer lib2)
    (quiereleer lib7)
    (predecesor lib2 lib4)
    (predecesor lib4 lib3)
    (paralelo lib7 lib4)
    (libroleido lib6)
  ) 

  (:goal (and
            (planeado lib3)
            (planeado lib2)
            (planeado lib7)
         )
  )
)
