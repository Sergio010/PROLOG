
ingreso :- write("Ingrese su nombre"),read(Nombre),write("Ingrese una nota "),read(Nota1)
,write("Ingrese una nota "),read(Nota2).

promedio_de(Estudiante,Var):- notas(Estudiante,N1,N2),Var is (N1*0,3+N2*0,7)/3.
despedida :- write("Hola"),display(Nombre),write("Tu promedio es: "),tab(1).

