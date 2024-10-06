mergesort([],[]) :- !.
mergesort([X],[X]) :- !.
mergesort(Xs,Res) :- length(Xs,XsL),
                   SL is XsL // 2,
				   append(L,R,Xs),		%split list in two halves of equal length
				   length(L,SL),
				   mergesort(L,LR),		%recursively mergesort partial lists
				   mergesort(R,RR),
				   merge(LR,RR,Res).	%merge sorted partial lists

merge([],Xs,Xs).
merge(Xs,[],Xs).
merge([X|Xs],[Y|Ys],[X|R]) :- X =< Y, merge(Xs,[Y|Ys],R).
merge([X|Xs],[Y|Ys],[Y|R]) :- X > Y, merge([X|Xs],Ys,R).