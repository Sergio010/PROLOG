/*Genere una base de conocimiento donde ingrese un n�mero decimal y el sistema realice un
cambio de base a binario. El nuevo n�mero deber� ser almacenado d�gito a d�gito en una
lista y esta debe ser mostrada al terminar la ejecuci�n del programa.
 *
 *
 *
 */


esDecimal(_).
insertar(Elem,L,[Elem,L]).


aBinario(F,L1,R):- esDecimal(X),X > 1, X is(F mod 2), X=:=0, insertar('0',L1,R), aBinario(X,L1,R); X is(F mod 2), X=\=0,insertar('1',L1,R), aBinario(X,L1,R).
