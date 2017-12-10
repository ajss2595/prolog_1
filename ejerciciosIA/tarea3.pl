%parte 3
%yo
%hermana:maria elena
%papa: Abraham Sikaffy
%tios por padre: estela,
%abuelos por padre:Maria,Jose
%bisabuelos:bishara sikaffy ,elena kawas, marcelino alfaro y epifania rivera
%mama: Nilda Sequeira
%tios por mama: Tomasjr
%prima diana
%abuelos: catalina, tomas
%bisabuelos:carmen aguilar y lisimaco carcamo, german sequeira y emerita chavarria

hombre(abrahamjr).
hombre(abraham).
hombre(jose).
hombre(marcelino).
hombre(bishara).
hombre(tomas).
mujer(mariae).
mujer(estela).
mujer(maria).
mujer(elena).
mujer(epifania).
mujer(nilda).
mujer(catalina).
mujer(diana).

progenitor(abraham,abrahamjr).
progenitor(abraham,mariae).
progenitor(nilda,abrahamjr).
progenitor(nilda,mariae).
%ladopaterno
progenitor(jose,abraham).
progenitor(maria,abraham).
progenitor(bishara,jose).
progenitor(bishara,estela).
progenitor(elena,jose).
progenitor(elena,estela).
progenitor(marcelino,maria).
progenitor(epifania,maria).
%ladomaterno
progenitor(tomasjr,diana).
progenitor(catalina,tomasjr).
progenitor(catalina,nilda).
progenitor(tomas,tomasjr).
progenitor(tomas,nilda).
progenitor(carmen,catalina).
progenitor(lisimaco,catalina).
progenitor(german,tomas).
progenitor(emerita,tomas).

esposos(abraham,nilda).
esposos(jose,maria).
esposos(bishara,elena).
esposos(marcelino,epifania).
esposos(tomas,catalina).
esposos(lisimaco,carmen).
esposos(german,emerita).

diferente(X,Y):- X \== Y.
hijo(A,B):-padre(B,A),hombre(A).
hija(A,B):-padre(B,A),mujer(A).
nieto(A,B):-padre(B,C),padre(C,A),hombre(A).%solo es nieto hombre
hermano(A,B):-padre(C,A),padre(C,B),diferente(A,B).
primo(A,B):-padre(C,A),padre(D,B),hermano(C,D),diferente(D,C).
tio(A,B):-padre(C,B),hermano(C,A),hombre(A).
abuelo(A,B):-nieto(B,A).
cuñado(A,B):-esposos(B,C),hermano(A,C).
tia(A,B):-padre(C,B),hermano(C,A),mujer(A).
sobrino(A,B):-hijo(A,C),hermano(C,B),hombre(A).
sobrina(A,B):-hija(A,C),hermano(C,B),mujer(A).
suegro(A,B):-hijo(C,A);hija(C,A),esposos(C,B).