canario(tweety).
gato(michifuz).
perro(fido).
delfin(flipper).
peces(cuchi).

mamifero(perro).
mamifero(gato).
felino(gato).
aves(canario).
aves(cuchi).
peces(pez).
peces(delfin).

vuela(X):-aves(X);canario(x).
camina(X):-mamifero(X);perro(X);gato(X).
correr(X):-felino(X);gato(X).
nadar(X):-peces(X).