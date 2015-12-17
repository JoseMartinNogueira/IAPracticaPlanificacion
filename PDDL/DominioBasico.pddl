(define (domain libros-domain)
	(:requirements :fluents)

	(:types libro )

	(:functions
		(predecesor ?lib - libro)
	)

	(:predicates
		(planeado ?lib - libro)
		(tiene-predecesor ?lib - libro)
		(libroleido ?lib - libro)
	)
	(:action planear
		:parameters
			(?lib - libro)
		;;CASOS
		;;1- No leido y no predecesor
		;;2- No leido y predecesor leido
		;;3- No leido y predecesor leido
		;; IDEA: Taratar los no leidos y si tienen predecesor y no lo ha leido planificar este antes.
		:precondition
			(and 
				(not (libroleido ?lib))	
				(not (planeado ?lib)) 
			)
		:effect	
			(forall (?l - libro)
				(when (and 
						(tiene-predecesor ?l)
						(not (planeado (predecesor ?l)))
						(not (libroleido (predecesor ?l)))
					)
					(planeado (predecesor ?l))
					(planeado ?l)
				)
			)
	)
)