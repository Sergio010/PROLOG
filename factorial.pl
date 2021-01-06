factorial(0,1).
factorial(N,F):- N > 0, Anterior is N-1, factorial(Anterior,F2), F is F2*N.
