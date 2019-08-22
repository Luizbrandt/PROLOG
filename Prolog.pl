pertence(X,[X|_]).
pertence(X,[_|A]):- pertence(X,A).

incluir(X,L,[X|L]).

inserir(X,L,[X|L]):- not(pertence(X,L)).

%inserir(X,L,[X|L]):- pertence(X,L), !, false.

% Tamanho de uma Lista
tamL([_], 1):- !.
tamL([_|L], T):- tamL(L, X), T is X + 1.

%Quantidade de elementos
qtde([],0).
qtde([_|T],S):-qtde(T,G),S is 1+G.