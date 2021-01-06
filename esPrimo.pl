inicio:-write('Hola, ingrese un numero:'),tab(1),read(Numero),esPrimo(Numero,2).

esPrimo(X,Y):- X=Y.
esPrimo(N,Aux):- Modulo is mod(N,Aux),Modulo =\=0, Aux1 is Aux+1,esPrimo(N,Aux1).
