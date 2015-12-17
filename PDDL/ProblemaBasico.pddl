(define (problem libros-prob)
	
  (:domain libros-domain)

  (:objects
    lib1 lib2 lib3 lib4 lib5 lib6 lib7 - libro
  )

  (:init
    (predecesor lib2 lib1)
    (predecesor lib7 lib6)
    (libroleido lib6)
  	
  ) 

  (:goal (forall (?l - libro) (or 
                                (planeado ?l)
                                (libroleido ?l)))

  ))