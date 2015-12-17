(define (domain libros-domain)
	(:requirements :fluents)

	(:types libro )

	(:functions
		(predecesor ?lib - libro)
	)

	(:predicates
		(planificar ?lib - libro)
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
				(not (planificar ?lib)) 
			)
		:effect
)