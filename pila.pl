%codigo de pila

% creacion de una pila vacia

crear([]).

%Aplicar un elemento E a la pila P

apilar(E,P,[E|P]).

%Devuelve 1 si esta vacia, sino un 0}}

esVacias([],1).
esVacias([_|_],0).

%Altura de la pila

altura([],0).
altura([_|P],R):- altura(P,RT),R is 1+RT.

%Desapilar un elemnto de una lista

desapilar([],[]).
desapilar([_|P],P).

%Devuelve el primer elemento de la lista p

cima([E|_],E).

apilarInvertida([],P,P).
apilarInvertida(P1,P2,Pi):- cima(Pi,E), desapilar(P1,Pmod),apilar(E,P2,P2mod),apilarInvertida(Pmod,P2mod,Pi).

invertir([],[]).
invertir(P1,P2):- crear(Pi),apilarInvertida(P1,Pi,P2).

%Consulta si un elemento se encuntra en la lista
miembro(X,[X|_]).
miembro(X,[_|Y]):- miembro(X,Y).

% Numero de elementos de una lista
%
numElementos([],0).
numElementos([_,Y],N):- numElementos(Y,M),N is M+1.

% Determinar si un elemento es una lista o no
%
esLista([]).
esLista([_|_]).

%Concatenar dos listas
%
concatLista([],L,L).
concatLista([X|L1],L2,[X|L3]):- concatLista(L1,L2,L3).

%Obtener el ultimo elemnto de la lista

ultimoElem(X,[X]).
ultimoElem(X,[_|Y]):- ultimo(X,Y).

%Obtener la inversa de la lista.
%
listaInversa([],[]).
listaInversa([X|Y],L):- listaInversa(Y,Z),concatLista(Z,[X],L).

%Eliminar un elemento de una lista
%
borrarElem(X,[X|Y],Y).
borrarElem(X,[Z|L],[Z|M]):- borrarElem(X,L,M).

%Consultar si L1 es suboconjunto de L2.
%
subconjunto([X|Y],Z):- miembro(X,Z),subconjunto(Y,Z).
subconjunto([],_).
%Insertar un elemnto en una lista.

insertar(Elem,L,[Elem,L]).
insertar(Elem,[X|Y],[X|Z]):- insertar(Elem,Y,Z).

%Comprueba si la lista L2 es una permutacion de la lista L1.
%
esPermutacion([],[]).
esPermutacion([X|Y],Z):- esPermutacion(Y,L),insertar(X,L,Z).

