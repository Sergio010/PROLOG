
% Dado un valor numerico x escribir las reglas y hechos para calcular
% x^n
%
% Tenemos primero: X => numero | Y => exponente (natural)
% x=0 entonces y=1.
% Tambien:
% x=1 entonces y=x

potencia(X,0,1):- X =\= 0,!. % X^0 = 1
potencia(0,Y,0):- Y =\= 0,!. % 0^Y = 0
potencia(X,1,X):- X=\=0,!. % X^1 = X


% n > 1 , par(n) , y = potencia(x,n,div2)
% n > 1, impar(n), y = potencia(x,n,div2)
%    Y = x*(y*y)
potencia(X,Y,Z):-  Y > 0, Y1 is Y-1, potencia(X,Y1,P1),Z is X*P1.
