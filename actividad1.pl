esAlumno(luis). % Constantes
esAlumno(benja).
esAlumno(marcelo).

edad(sergio,20). % hechos
edad(luis,23).
edad(benja,24).


esProfesor(raul,luis). % hechos
esProfesor(raul,benja).
esProfesor(raul,marcelo).

sonCompanieros(A,B) :- esProfesor(C,A), esProfesor(C,B). %Regla o predicado poliatico
perteneceFacultad(raul,ciencias). % hecho

% Determinar

tieneVeinte(X):- edad(X,20). % mi forma

tieneVeinte(Persona):- edad(Persona,Edad), Edad is 20. % forma del profe
