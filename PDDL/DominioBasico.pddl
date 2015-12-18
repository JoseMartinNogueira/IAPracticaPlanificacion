(define (domain libros-domain)
	(:requirements :strips :typing :adl :equality)

	(:types libro mes)

	(:predicates
		(planeado ?lib - libro)
		(mesocupado ?m - mes)
		(libroleido ?lib - libro)
		(predecesor ?lib - libro ?pred - libro)
	)
	(:action planear
		:parameters
			(?lib - libro
			 ?m - mes)
		:precondition
			(and
				(not (mesocupado ?m)) 
				(not (libroleido ?lib))	
				(not (planeado ?lib))
				(forall (?l - libro) (or
										(and
											(predecesor ?lib ?l)
											(or
											(libroleido ?l)
											(planeado ?l)
											)
										)
									  	(not (predecesor ?lib ?l))
									  )
				)
			)
		:effect	
			(and
				(planeado ?lib)
				(mesocupado ?m)
			)
	)
)