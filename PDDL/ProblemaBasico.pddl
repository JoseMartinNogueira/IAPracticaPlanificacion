(define (problem libros-prob)
	
  (:domain libros-domain)

  (:objects
    lib1 lib2 lib3 lib4 lib5 lib6 lib7 - libro
  )

  (:init
  
    (quiereleer lib3)
    (quiereleer lib2)
    (predecesor lib2 lib1)
    (predecesor lib7 lib6)
    (libroleido lib6)
  ) 

  (:goal (forall (?l - libro) ;;Todos los libros tienen que ser descartados, planeados o leidos
            (or 
              (descartado ?l)
              (planeado ?l)
              (libroleido ?l)
            )
         )
  )
)