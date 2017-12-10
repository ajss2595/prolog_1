hombre(abraham).
hombre(homero).
hombre(bart).
hombre(santaslittlehelper).
hombre(snowball).
hombre(milhouse).
hombre(seymour).
hombre(clancy).
hombre(kang).
hombre(burns).

mujer(mona).
mujer(jacqueline).
mujer(paty).
mujer(selma).
mujer(marge).
mujer(maggie).
mujer(lisa).
mujer(edna).

esposos(abraham,mona).
esposos(clancy,jacqueline).
esposos(homero,marge).

mascota(snowball,lisa).
mascota(santaslittlehelper,bart).

jefe(burns,homero).
jefe(seymour,edna).

progenitor(homero,bart).
progenitor(homero,lisa).
progenitor(marge,bart).
progenitor(marge,lisa).
progenitor(marge,maggie).
progenitor(kang,maggie).
progenitor(abraham,homero).
progenitor(mona,homero).
progenitor(jacqueline,marge).
progenitor(jacqueline,paty).
progenitor(jacqueline,selma).
progenitor(clancy,marge).
progenitor(clancy,paty).
progenitor(clancy,selma).

amigos(milhouse,bart).


%condiciones
%A y B van a ser hermanos si el progenitor de A es igual al de B
hermanos(A,B):-progenitor(P,A), progenitor(P,B), A\==B.

%X va a ser abuelo de Y si X es progenitor del progenitor de Y y es hombre
abuelo(X,Y) :-progenitor(L,Y),progenitor(X,L),hombre(X).
%X va a ser abuela de Y si X es progenitor del progenitor de Y y es mujer
abuela(X,Y) :-progenitor(L,Y),progenitor(X,L),mujer(X).

%Z va a ser la tia de W si el abuelo o abuela de
%Z tiene que ser mujer
%tia tiene que ser hermana de mi mama o papa
tia(A,B):-progenitor(X,B),hermanos(X,A),mujer(A).
