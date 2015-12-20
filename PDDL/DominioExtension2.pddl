(define (domain libros-domain)
	(:requirements :strips :typing :adl :equality)

	(:types libro - libro
			mes - mes)
	(:predicates
		(planeado ?lib - libro)
		(libroleido ?lib - libro)
		(predecesor ?lib - libro ?pred - libro)
		(paralelo ?lib1 - libro ?lib2 - libro)
		(quiereleer ?lib - libro)
		(descartado ?lib - libro)
		(mesocupado ?m - mes)
		(siguiente ?m1 - mes ?m2 - mes)
		(auxiliar ?lib - libro ?m - mes)
	)
	(:action planear
		:parameters
			(?lib - libro ?m - mes)
		:precondition
			(and
				(not (mesocupado ?m)) 
				(not (libroleido ?lib))	
				(not (planeado ?lib))
				(forall (?pred - libro) (or
											(not (predecesor ?lib ?pred))
											(or
												(planeado ?pred)
												(libroleido ?pred)
											)
										)
				)
				(forall (?paral - libro) (or
											(and
												(not (planeado ?paral))
												(not (libroleido ?paral))
											)
											(and
												(not (paralelo ?lib ?paral))
												(not (paralelo ?paral ?lib))
											)
										)
				)
			)
		:effect
			(and 
				(mesocupado ?m)
				(planeado ?lib)
				(auxiliar ?lib ?m)
			)
	)
	(:action planearParalelo
		:parameters
			(?lib - libro ?m - mes ?mAnterior - mes ?mPosterior - mes)
		:precondition
			(and
				(siguiente ?mAnterior ?m)
				(siguiente ?m ?mPosterior)
				(not (libroleido ?lib))	
				(not (planeado ?lib))
				(forall (?pred - libro) (or
											(not (predecesor ?lib ?pred))
											(or
												(planeado ?pred)
												(libroleido ?pred)
											)
										)
				)
				(forall (?paral - libro) (or
											(and
												(not (paralelo ?lib ?paral))
												(not (paralelo ?paral ?lib))
											)
											(and
												(or
													(auxiliar ?paral ?m)
													(auxiliar ?paral ?mAnterior)
													(auxiliar ?paral ?mPosterior)
												)
												(or
													(planeado ?paral)
													(libroleido ?paral)
												)
											)
										)
				)
			)
		:effect
			(and 
				(mesocupado ?m)
				(planeado ?lib)
				(auxiliar ?lib ?m)
			)
	)
)