min([X],X) :- !.
min([X|Xs],X) :- min(Xs,R), X =< R, !.
min([X|Xs],R) :- min(Xs,R), X > R.

remove(_,[],[]).
remove(X,[X|Xs],Xs).
remove(X,[Y|Xs],[Y|R]) :- X \= Y, remove(X,Xs,R). 

selectionsort([],[]) :- !.
selectionsort(Xs,[M|R]) :- min(Xs,M), 
                           remove(M,Xs,I), 
						   selectionsort(I,R).