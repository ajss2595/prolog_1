%parte 1
quiere(pedro,maria).
quiere(pedro,belen).
quiere(manuel,belen).
quiere(maria,pedro).
quiere(belen,maria).
quiere(manuel,maria).
quiere(juan,maria).
quiere(pedro,juan).
quiere(maria,juan).
quiere(belen,juan).
quiere(manuel,juan).
quiere(pedro,pedro).
quiere(belen,belen).
quiere(manuel,manuel).
quiere(maria,maria).
quiere(juan,juan).
quiere(alguien,juan).
quiere(alguien,pedro).
quiere(alguien,maria).
quiere(alguien,belen).
quiere(alguien,manuel).

%parte2
quiere(manuel,maria).
quiere(manuel,pedro).
quiere(alguien,manuel).
quiere(X,maria).
quiere(X,pedro).
mutuamente(A,B):-quiere(A,B),quiere(B,A).
simismos(A):-quiere(A,A).
quiere(manuel,manuel).
quiere(alguien,maria).
quiere(alguien,X).



