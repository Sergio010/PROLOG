esEnsalada(apio,16).
esEnsalada(cebolla,40).
esEnsalada(cilantro,4).

esCarne(pollo,239).
esCarne(cerdo,242).
esCarne(pavo,145).
esCarne(vacuno,250).

esAcompanamiento(pure,88).
esAcompanamiento(arroz,130).
esAcompanamiento(papas_fritas,312).

esPostre(naranaja,41).
esPostre(manzana,52).
esPostre(pina,50).

esAlmuerzoLiviano(X,Y,Z,W):- esEnsalada(X,C1), esCarne(Y,C2) , esAcompanamiento(Z,C3), esPostre(W,C4), C1+C2+C3+C4 < 450.

esAlmuerzoPesado(X,Y,Z,W):- esEnsalada(X,C1), esCarne(Y,C2) , esAcompanamiento(Z,C3), esPostre(W,C4), C1+C2+C3+C4 > 450.


% forma del profe
%
comida(X):- fruta(X); verduras(X);carne(X);acompañamiento(X).

%Calorias investigadas:


calorias(apio,16).
calorias(cebolla,40).
calorias(cilantro,4).

calorias(pollo,239).
calorias(cerdo,242).
calorias(pavo,145).
calorias(vacuno,250).

calorias(pure,88).
calorias(arroz,130).
calorias(papas_fritas,312).

calorias(naranaja,41).
calorias(manzana,52).
calorias(pina,50).

entrada(apio).
entrada(cebolla).
entrada(cilantro).

almuerzo(Entrada,Carne,Acompañamiento,Postre):- entrada(Entrada),carne(Carne)
,acompañamiento(Acompañamiento),fruta(Postre).


numeroRandom(X):- X is random(10), write('Soy un numero aleatorio: ') ,display(X).
% la funcion random genera un numero aleatorio.
% la funcion write permite imprimir por pantalla.
% el programa escribira el mensaje justo antes de la respuesta.
% el metodo "display" permite imprimir el contenido de alguna variable.

