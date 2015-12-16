(define (domain libros-domain)
	(:requirements :fluents)

	(:types libro )

	(:functions
		(predecesor ?lib - libro)
	)

	(:predicates
		(planificar ?lib - libro)
		(tiene-predecesor ?lib - libro)
	)

	(:action planear
		:parameters
			(?lib - libro)
		:precondition
			(and (not (planificar ?lib))
	)
)




;comment