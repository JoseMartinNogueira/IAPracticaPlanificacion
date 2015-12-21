;Comprobar si consigue assignar teniendo en cuenta los libros leidos
(define (problem libros-prob)
  
  (:domain libros-domain)

  (:objects
      lib1 lib2 lib3 lib4 lib5 lib6 lib7 lib8 lib9 lib10 lib11 lib12 lib13 lib14 - libro
      mes12 mes11 mes10 mes9 mes8 mes7 mes6 mes5 mes4 mes3 mes2 mes1 - mes
  )

  (:init
    (= (numMes mes1) 1)(= (numMes mes2) 2)(= (numMes mes3) 3)(= (numMes mes4) 4)(= (numMes mes5) 5)(= (numMes mes6) 6)
    (= (numMes mes7) 7)(= (numMes mes8) 8)(= (numMes mes9) 9)(= (numMes mes10) 10)(= (numMes mes11) 11)(= (numMes mes12) 12)
    (= (pagOcupadas mes1) 0)(= (pagOcupadas mes2) 0)(= (pagOcupadas mes3) 0)(= (pagOcupadas mes4) 0)(= (pagOcupadas mes5) 0)(= (pagOcupadas mes6) 0)
    (= (pagOcupadas mes7) 0)(= (pagOcupadas mes8) 0)(= (pagOcupadas mes9) 0)(= (pagOcupadas mes10) 0)(= (pagOcupadas mes11) 0)(= (pagOcupadas mes12) 0)
    (= (mesAsig lib1) 0)(= (mesAsig lib2) 0)(= (mesAsig lib3) 0)(= (mesAsig lib4) 0)(= (mesAsig lib5) 0)(= (mesAsig lib6) 0)
    (= (mesAsig lib7) 0)(= (mesAsig lib8) 0)(= (mesAsig lib9) 0)(= (mesAsig lib10) 0)(= (mesAsig lib11) 0)(= (mesAsig lib12) 0)
    (= (mesAsig lib13) 0)(= (mesAsig lib14) 0)
    (= (numPag lib1) 100)(= (numPag lib2) 200)(= (numPag lib3) 700)(= (numPag lib4) 400)(= (numPag lib5) 500)(= (numPag lib6) 100)
    (= (numPag lib7) 200)(= (numPag lib8) 300)(= (numPag lib9) 400)(= (numPag lib10) 500)(= (numPag lib11) 100)(= (numPag lib12) 200)
    (= (numPag lib13) 300)(= (numPag lib14) 400)
    (quiereleer lib3)
    (quiereleer lib2)
    (quiereleer lib7)
    (predecesor lib2 lib4)
    (predecesor lib4 lib3)
;;    (paralelo lib7 lib4)
;;    (libroleido lib6)
  ) 

  (:goal (forall (?lib - libro) 
            (or 
              (not (quiereleer ?lib))
              (and
                (quiereleer ?lib)
                (planeado ?lib)
              )
            )
          )
  )
)
