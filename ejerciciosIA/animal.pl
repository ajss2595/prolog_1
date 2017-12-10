gato(tom).
gato(garfield).
raton(jerry).
perro(pluto).
come(tom, jerry).
animal(oso).
animal(X):-gato(X).
animal(X):-raton(X).
animal(X):-perro(X).
animalpeligroso(X):-animal(X),(X=oso; come(X,Y)), X\==Y.