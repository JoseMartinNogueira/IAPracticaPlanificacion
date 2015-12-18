(define (domain libros-domain)
	(:requirements :strips :typing :adl :equality)

	(:types libro )

	(:predicates
		(planeado ?lib - libro)
		(libroleido ?lib - libro)
		(predecesor ?lib - libro ?pred - libro)
	)
	(:action planear
		:parameters
			(?lib - libro)
		:precondition
			(and 
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
				;(not (predecesor ?lib)) 
			)
		:effect	
			(planeado ?lib)
	)
)