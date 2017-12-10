macho(victor).
macho(juan).
macho(estanislao).
macho(jose).
macho(mariano).
macho(will).
macho(tano).
macho(rey).
macho(willito).
macho(jairo).
macho(lenin).
macho(marianito).
macho(cristian).
macho(jorge).

hembra(idalia).
hembra(ana).
hembra(eda).
hembra(marina).
hembra(mayra).
hembra(glenda).
hembra(deisy).
hembra(jaslin).
hembra(flori).
hembra(marisol).
hembra(edamarina).
hembra(emely).
hembra(beky).
hembra(samaira).
hembra(mabel).

progenitor(victor,estanislao).
progenitor(idalia,estanislao).

progenitor(estanislao,mariano).
progenitor(eda,mariano).

progenitor(estanislao,wil).
progenitor(eda,will).

progenitor(estanislao,tano).
progenitor(eda,tano).

progenitor(estanislao,glenda).
progenitor(eda,glenda).

progenitor(juan,jose).
progenitor(ana,jose).

progenitor(jose,mayra).
progenitor(marina,mayra).

progenitor(jose,rey).
progenitor(marina,rey).

progenitor(jose,deisy).
progenitor(marina,deisy).

progenitor(mariano,marisol).
progenitor(mayra,marisol).

progenitor(mariano,edamarina).
progenitor(mayra,edamarina).

progenitor(mariano,lenin).
progenitor(mayra,lenin).

progenitor(mariano,emely).
progenitor(mayra,emely).

progenitor(mariano,beky).
progenitor(mayra,beky).

progenitor(jorge,marianito).
progenitor(edamarina,marianito).

progenitor(jorge,samaira).
progenitor(edamarina,samaira).

progenitor(lenin,cristian).
progenitor(mabel,cristian).

esposos(victor,idalia).
esposos(estanislao,eda).
esposos(juan,ana).
esposos(jose,marina).
esposos(mariano,mayra).
esposos(jorge,edamarina).
esposos(lenin,mabel).



padre(A,B):- progenitor(A,B), macho(A).
madre(A,B):- progenitor(A,B), hembra(A).

hermano(A,B):- progenitor(P,A),progenitor(P,B), macho(A),A\==B.
hermana(A,B):- progenitor(P,A),progenitor(P,B), hembra(A),A\==B.

tio(A,B) :- progenitor(P,B),hermano(P,A),macho(A).
tia(A,B) :- progenitor(P,B),hermana(P,A),hembra(A).

abuelo(A,B) :- padre(A,P), padre(P,B),macho(A).
abuela(A,B) :- madre(A,P),madre(P,B),hembra(A).


primo(A,B) :- progenitor(P,A),progenitor(Y,B), hermano(P,Y).

suegro(A,B) :- padre(A,P), esposo(P,B), macho(A).
suegra(A,B) :- madre(A,P), esposos(P,B), hembra(A).

cunado(A,B) :- esposo(A,P),hermano(P,B),macho(A).
