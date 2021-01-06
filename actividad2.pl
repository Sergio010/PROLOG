% Mi forma:

esAlumno(cristobal).
esAlumno(vicente).
esAlumno(javier).

notaUno(cristobal,3.3).
notaDos(cristobal,4.5).
notaTres(cristobal,4.2).

notaUno(vicente,6.5).
notaDos(vicente,2.7).
notaTres(vicente,2.5).

notaUno(javier,3.0).
notaDos(javier,5.5).
notaTres(javier,3.7).

haAprobado(Alumno):- notaUno(Alumno,N1),notaDos(Alumno,N2),notaTres(Alumno,N3), (N1 + N2 + N3)/3 >= 4.

%promedio(Estudiante,Resultado):-
%notaUno(Estudiante,N1),notaDos(Estudiante,N2),notaTres(Estudiante,N3),
%Resultado is (N1 + N2 + N3)/3.


%Forma del profe:

alumno(cristobal).
alumno(vicente).
alumno(javier).

notas(javier,3.3,4.5,4.2).
notas(vicente,6.5,2.7,2.5).
notas(cristobal,3.0,5.5,3.7).

pasoElRamo(Estudiante,Var):- alumno(Estudiante),notas(Estudiante,N1,N2,N3), Var is (N1+N2+N3)/3, Var >= 4.0.

