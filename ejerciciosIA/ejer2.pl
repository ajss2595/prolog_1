hombre(carlos).
hombre(juan).
hombre(pedro).
hombre(pablo).
hombre(mateo).
hombre(andres).
hombre(edwin).

mujer(maria).
mujer(paula).
mujer(carla).
mujer(lorena).

esposos(carlos,maria).
esposos(juan,paula).
esposos(pedro,carla).
esposos(andres,lorena).

progenitor(carlos,juan).
progenitor(carlos,carla).
progenitor(maria,juan).
progenitor(maria,carla).
progenitor(juan,pablo).
progenitor(juan,mateo).
progenitor(paula,pablo).
progenitor(paula,mateo).
progenitor(pedro,andres).
progenitor(carla,andres).
progenitor(andres,edwin).
progenitor(lorena,edwin).

hermanos(A,B):-progenitor(P,A), progenitor(P,B), A\==B.
abuelo(X,Y) :-progenitor(L,Y),progenitor(X,L),hombre(X).
tio(A,B):-progenitor(X,B),hermanos(X,A).
tia(A,B):-progenitor(X,B),hermanos(X,A),mujer(A).
%sobrinos son los hijos de mis hermanos

%primos son los hijos de mis tios
primos(A,B) :- progenitor(P,A),progenitor(Y,B), hermano(P,Y).