insertionsort([],[]).
insertionsort([X|Xs],R) :- insertionsort(Xs,R1), insert(X,R1,R).

insert(X,[],[X]).
insert(X,[Y|Xs],[Y|R]) :- X >= Y, insert(X,Xs,R).
insert(X,[Y|Xs],[X,Y|Xs]) :- X < Y.