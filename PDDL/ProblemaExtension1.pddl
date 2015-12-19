(define (problem libros-prob)
  
  (:domain libros-domain)

  (:objects
     lib1 lib2 lib3 lib4 lib5 lib6 lib7 lib8 lib9 lib10 lib11 lib12 lib13 lib14 - libro
    mes1 mes2 mes3 mes4 mes5 mes6 mes7 mes8 mes9 mes10 mes11 mes12 - mes
  )

  (:init
  
    (quiereleer lib3)
    (quiereleer lib2)
    (predecesor lib2 lib4)
    (predecesor lib7 lib6)
    (libroleido lib6)
  ) 

  (:goal (forall (?l - libro) ;;Todos los libros tienen que ser descartados, planeados o leidos
            (or 
              (descartado ?l)
              (planeado ?l)
              (libroleido ?l)
              (forall (?m - mes) (mesocupado ?m))
            )
         )
  )
)