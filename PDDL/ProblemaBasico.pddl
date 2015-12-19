(define (problem libros-prob)
	
  (:domain libros-domain)

  (:objects
    lib1 lib2 lib3 lib4 lib5 lib6 lib7 - libro
  )

  (:init
  
    (quiereleer lib3)
    (quiereleer lib2)
    (predecesor lib2 lib4)
    (predecesor lib7 lib6)
    (libroleido lib6)
  ) 

  (:goal (and
          (planeado lib3)
          (planeado lib2)
          )
  )
)