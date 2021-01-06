
% Base de conocimiento orientada a un zoológico:
saludo:-write("BIENVENIDOS A ZOOLÓGICO!"). % saludo.
%Hechos que definen las cualidades de un animal:
animal(perro,11,mamifero,"Si").
animal(leon,14,mamifero,"No").
animal(cebra,30,mamifero,"No").
animal(aguila,20,ave,"Si").
animal(serpiente,25,reptil,"No").
animal(raton,2,mamifero,"Si").
animal(conejo,9,mamifero,"Si").


esVerdura(lechuga). % Hecho que define a una verdura.


% Hecho que define que X es mas debil que un Y => Siendo Y mas fuerte
% que X.
masDebil(conejo, perro).
masDebil(cebra,leon).
masDebil(serpiente,aguila).
masDebil(raton,serpiente).

masDebil(lechuga,conejo).
masDebil(lechuga,cebra).


esHerbivoro(X):- masDebil(Y,X), plantaComestible(Y).% Regla que permite saber si X es un Herbivoro.
esCarnivoro(X):- animal(X,_,_,_),masDebil(_,X). % Regla que permite saber si X es Carnivoro,si se cumple,devuelve true, caso contrario false.


plantaComestible(X):- esVerdura(X). % Regla que permite saber si X es una planta comestible, si se cumple,devuelve true, caso contrario false.

% Regla que permite saber que animal "X" come a otro "Y".
comeA(A,B):- saludo, esCarnivoro(A), masDebil(B, A) ; esHerbivoro(A),masDebil(B, A), plantaComestible(B).

edad(X,N):- saludo,nl,write("Años:"),animal(X,N,_,_). % Regla que permite saber la edad de una animal.

esmasViejo(X,Y):- saludo,animal(X,N,_,_),animal(Y,M,_,_), N>M. % Regla que permite saber que animal "X" es mas debil que otro animal "Y".

tipoAnimal(X,Z):- saludo,nl,write("Tipo de Animal:"), animal(X,_,Z,_). % Regla que permite saber a que tipo de especie pertenece un animal.

esDomesticado(X):- saludo,nl,animal(X,_,_,W), W == "Si" . % Regla que permite saber si un animal es domesticado o no.




