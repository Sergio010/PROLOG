esHijo(sergio).
esHijo(juanito).

esPapa(juan,sergio).
esPapa(juan,juanito).

esMadre(yolanda,sergio).
esMadre(yolanda,juanito).

esPadre(A,B):- esPapa(A,B) ; esMadre(A,B) , esHijo(B).
esHermano(X,Y):- esPapa(W,X) , esMadre(Z,X),esPapa(W,Y) ,esMadre(Z,Y).
