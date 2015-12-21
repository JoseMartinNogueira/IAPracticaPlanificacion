(define (domain libros-domain)
	(:requirements :strips :typing :adl :equality :fluents)

	(:types libro - libro
			mes - mes)
	(:functions
		(numMes ?m - mes)
		(numPag ?m - mes)
		(mesAsig ?lib - libro)
	)
	(:predicates
		(planeado ?lib - libro)
		(libroleido ?lib - libro)
		(predecesor ?lib - libro ?pred - libro)
		(paralelo ?lib1 - libro ?lib2 - libro)
		(quiereleer ?lib - libro)
	)
	;; Libro sin predecesor y sin paralelos
	(:action primero
		:parameters
			(?lib - libro ?m - mes)
		:precondition
			(and
				(not (libroleido ?lib))
				(not (planeado ?lib))
				(forall (?pred - libro) (not (predecesor ?lib ?pred))
				)
				(forall (?paral - libro) (and
											(not (paralelo ?lib ?paral))
											(not (paralelo ?paral ?lib))
										 )
				)
			)
		:effect
			(and 
				(planeado ?lib)
				(increase (mesAsig ?lib) (numMes ?m))
			)
	)
	;; Libro con predecesor y sin paralelo
	(:action segundo
		:parameters
			(?lib - libro ?m - mes)
		:precondition
			(and
				(not (libroleido ?lib))
				(not (planeado ?lib))
				(forall (?pred - libro) (or
											(not (predecesor ?lib ?pred))
											(and
												(predecesor ?lib ?pred)
												(or
													(libroleido ?pred)
													(and
														(planeado ?pred)
														(> (numMes ?m) (mesAsig ?pred))
													)
												)
											)
										)
				)
				(forall (?paral - libro) (and
											(not (paralelo ?lib ?paral))
											(not (paralelo ?paral ?lib))
										 )
				)
			)
		:effect
			(and 
				(planeado ?lib)
				(increase (mesAsig ?lib) (numMes ?m))
			)
	)
		;; Libro sin predecesor y con paralelo
	(:action tercero
		:parameters
			(?lib - libro ?m - mes)
		:precondition
			(and
				(not (libroleido ?lib))
				(not (planeado ?lib))
				(forall (?pred - libro) (not (predecesor ?lib ?pred))
				)
				(forall (?paral - libro) (or
											(and
												(not (paralelo ?lib ?paral))
												(not (paralelo ?paral ?lib))
										 	)
										 	(or
											 	(= (numMes ?m) (mesAsig ?paral))
											 	(= (numMes ?m) (+ (mesAsig ?paral) 1))
											 	(= (numMes ?m) (- (mesAsig ?paral) 1))
										 	)
										 )
				)
			)
		:effect
			(and 
				(planeado ?lib)
				(increase (mesAsig ?lib) (numMes ?m))
			)
	)
	;; Libro con predecesor y con paralelo
	(:action cuarto
		:parameters
			(?lib - libro ?m - mes)
		:precondition
			(and
				(not (libroleido ?lib))
				(not (planeado ?lib))
				(forall (?pred - libro) (or
											(not (predecesor ?lib ?pred))
											(and
												(predecesor ?lib ?pred)
												(or
													(libroleido ?pred)
													(and
														(planeado ?pred)
														(> (numMes ?m) (mesAsig ?pred))
													)
												)
											)
										)
				)
				(forall (?paral - libro) (or
											(and
												(not (paralelo ?lib ?paral))
												(not (paralelo ?paral ?lib))
										 	)
										 	(or
											 	(= (numMes ?m) (mesAsig ?paral))
											 	(= (numMes ?m) (+ (mesAsig ?paral) 1))
											 	(= (numMes ?m) (- (mesAsig ?paral) 1))
										 	)
										 )
				)
			)
		:effect
			(and 
				(planeado ?lib)
				(increase (mesAsig ?lib) (numMes ?m))
			)
	)
	;; Falta poner que un paralelo o pred ya está leído
)
