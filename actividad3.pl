triangulo(L1,L2,L3).

esEquilatero(L1,L2,L3):- triangulo(L1,L2,L3), L1==L2,L3==L2,L1==L3, write('Equilatero').
esIsoceles(L1,L2,L3):- triangulo(L1,L2,L3), L1\==L2,L3==L2,L1==L3 ; L1==L2,L3==L2,L1\==L3,write('Isoceles').
esEscaleno(L1,L2,L3):- triangulo(L1,L2,L3), L1\==L2,L3\==L2,L1\==L3, write('Escaleno').

% forma del profe:
%
tipodeTriangulo(L1,L2,L3):- ((L1==L2,L3==L2, write('Equilatero')),!) ; (L1=\=L2,L1\==L3,write('Escaleno')),!.



