(define (domain libros-domain)
	(:requirements :strips :typing :adl :equality)

	(:types libro mes)

	(:predicates
		(planeado ?lib - libro)
		(libroleido ?lib - libro)
		(predecesor ?lib - libro ?pred - libro)
		(quiereleer ?lib - libro)
		(descartado ?lib - libro)
		(mesocupado ?m - mes)
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
										(and       ;; Si tiene un predecesor y lo ha leido o ha sido planeado
											(predecesor ?lib ?l)
											(or
												(libroleido ?l)
												(planeado ?l)
											)
										)
										(and ;;si es predecesor de algun libro que quiere leer
											(predecesor ?l ?lib)
											(quiereleer ?l)
											;(not (planeado ?l))
										)
									  	(not (predecesor ?lib ?l)) ;; no tiene ningun predecesor
									  )
				) 
			)
		:effect
			(and 
				(mesocupado ?m)
				(planeado ?lib)
			)
	)
)