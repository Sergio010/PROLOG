%esPar:- write('Ingrese un numero:'), read(F),nl, X is(F mod 2) ,nl,
% X=:=0.

% esImpar:-write('Ingrese un numero:'), read(F),nl, X is(F mod 2) ,nl,
% X=\=0.

% mi intento :,C
collatz(1).
collatz(F):- X is(F mod 2) ,nl, X=:=0, X is(X/2),display(X),collatz(X),!.
collatz(F):- X is(F mod 2) ,nl,X=\=0,X is (X*3+1),display(X),collatz(X),!.


% ------------------------------------------------------------------------

collatz(1).
esPar(F):-X is(F mod 2) ,nl, X=:=0, X is(X/2),display(X),collatz(X).
esImpar(F):- X is(F mod 2) ,nl,X=\=0,X is (X*3+1),display(X),collatz(X).

collatz(X):- esPar(X); esImpar(X). % Si es par o impar entra igual a collatz

% ------------------------------------------------------------------------


% forma del profe:
%
collatz(1).
collatz(N):- Aux is mod(N,2),Aux =:=0 ,N2 is N2/2,display(N2),nl,collatz(N2),!.
collatz(N):- Aux is mod(N,2),Aux =:=1 ,N2 is (N2*3)+1,display(N2),nl,collatz(N2),!.


