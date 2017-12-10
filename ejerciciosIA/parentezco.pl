%primero defino los parentescos basicos 
% de la familia
% padre(A,B)significa que B es el padre de A...

padre(juan,alberto).
padre(luis,alberto).
padre(alberto,leoncio).
padre(geronimo,leoncio).
padre(luisa,geronimo).

% ahora defino que las condiciones para que 
% dos individuos sean hermanos
% hermano(A,B) significa que A es hermano de B...

hermano(A,B):-padre(A,P),padre(B,P), A\==B.

% ahora defino el parentezco abuelo-nieto.
% nieto(A,B) significa que A es nieto de B..

nieto(A,B):-padre(A,P), padre(P,B).
tio(A,B):-padre(B,Z),hermano(Z,A), A\==B.
