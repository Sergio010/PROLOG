
% 0 = true
% 1 = false

conjuncion(A,B):- A==0 , B==0.

disyuncion(A,B):- A==0 , B==0 ; A==1 , B==0 ; A==0 , B==1.

operadorNot(A):- A == 1.

implicancia(A,B):- A==0 , B==0 ; A==1 , B==0 ; A==1 , B==1.

equivalencia(A,B):- A==0 , B==0 ; A==1 , B==1.


%Forma del profe:
%

niega(1,0).
niega(0,1).

disyuncionPhi(1,_,1). % el "_" indica que el parametro a recibir es desconoccido
disyuncionPhi(1,B,B).

conjuncionPhi(0,_,0).
conjuncionPhi(1,C,C).

implicanciaPhi(1,1,1).
implicanciaPhi(1,0,0).
implicanciaPhi(0,1,1).
implicanciaPhi(1,1,1).

equivalenciaPhi(1,1,1).
equivalenciaPhi(1,0,0).
equivalenciaPhi(0,1,0).
equivalenciaPhi(0,0,1).



