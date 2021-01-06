ultimo([Result], Result).						% Base
ultimo([_|L], Result) :- ultimo(L, Result).		% Recursividad
