quicksort([],[]).
quicksort([X],[X]) :- !.
quicksort([X|Xs],R) :- findall(Y1,(member(Y1,Xs),Y1 =< X),Ys1),
                       findall(Y2,(member(Y2,Xs),Y2 > X),Ys2),
					   quicksort(Ys1,R1),
					   quicksort(Ys2,R2),
					   append(R1,[X],IR),
					   append(IR,R2,R).