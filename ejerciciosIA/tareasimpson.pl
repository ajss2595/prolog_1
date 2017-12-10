macho(homero).
macho(bart).
macho(abraham).
macho(burns).
macho(clancy).
macho(skinner).
macho(milhouse).
macho(kang).
hembra(jacqueline).
hembra(edna).
hembra(mona).
hembra(marge).
hembra(selma).
hembra(maggie).
hembra(lisa).

animal(snowball).

progenitor(homero,bart).
progenitor(marge,bart).
progenitor(homero,lisa).
progenitor(marge,lisa).
progenitor(kang,maggie).
progenitor(marge,maggie).
progenitor(abraham,homero).
progenitor(mona,homero).
progenitor(clancy,marge).
progenitor(jacqueline,marge).
progenitor(clancy,paty).
progenitor(jacqueline,paty).
progenitor(clancy,selma).
progenitor(jacqueline,selma).

abuelo(X,Y):-progenitor(M,Y),progenitor(X,M),macho(X).
abuela(X,Y):-progenitor(M,Y),progenitor(X,M),hembra(X).
hermano(X,Y):-progenitor(M,Y),progenitor(M,X),macho(X),X\==Y.
hermana(X,Y):-progenitor(M,Y),progenitor(M,Y),hembra(X),X\==Y.
tia(X,Y):-progenitor(M,Y),progenitor(X,M),hembra(X).