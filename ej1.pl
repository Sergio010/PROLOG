


apilar(E,P,[E|P]). % Funcion para agregar cada resto de la division

esbinario(0,'0'). % Hecho que indica que,si el resto es 0, entonces agregar un "0" a la lista.
esbinario(1,'1'). % Hecho que indica que,si el resto es 1, entonces agregar un "1" a la lista.

esbinario(A,B):- A>1,X is A mod 2,N is A//2,esbinario(N,B2),apilar(B2,X,B).

%  Se hace la respectiva division al numero que se recibe como
%  parametro, Dependiendo del resto, se agrega a la lista y se llama
%  nuevamente hasta que ya no sea divisible.



