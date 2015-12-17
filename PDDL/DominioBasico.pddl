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
		;;CASOS
		;;1- No leido y no predecesor
		;;2- No leido y predecesor leido
		;;3- No leido y predecesor leido
		;; IDEA: Taratar los no leidos y si tienen predecesor y no lo ha leido planificar este antes.
		:precondition
			(and 
				(not (libroleido ?lib))	
				(not (planeado ?lib))
				;(not (predecesor ?lib)) 
			)
		:effect	
			(planeado ?lib)
	)
)