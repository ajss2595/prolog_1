%determino los generos
masculino(homero).
masculino(abraham).
masculino(burns).
masculino(skinner).
masculino(bart).
masculino(snowball).
masculino(littlehelper).
masculino(milhouse).
masculino(kang).
masculino(clansy).
femenino(mona).
femenino(marge).
femenino(paty).
femenino(selma).
femenino(jaqueline).
femenino(edna).
femenino(lisa).
femenino(maggie).

padre(abraham,homero).
padre(clansy,marge).
padre(clansy,paty).
padre(clansy,selma).
padre(homero,bart).
padre(homero,lisa).
padre(kang, maggie).

madre(mona,homero).
madre(jaqueline,marge).
madre(jaqueline,paty).
madre(jaqueline,selma).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).

perro(littlehelper,homero).
gato(snowball,homero).
maestra(edna, bart).
maestra(edna, lisa).
amigo(milhouse,bart).
director(skinner,bart).
director(skinner,lisa).
jefe(burns,homero).



%Ahora loas condiciones:
%para que sean hermanos > hermano(A,B) significa que A es hermano de B
hermanos(A,B):-padre(P,A), padre(P,B), A\==B ; madre(M,A), madre(M,B), A\==B .


%Ahora defino parentesco abuelo y nieto
%nieto(A,B) significa que A es nieto de B
nieto(A,B):-padre(P,A), padre(B,P) ; madre(M,A), madre(B,M).



%Ahora defino parentesco entre tia y sobrino
%tio(A,B) significa que A es tio de B
tio(A,B):-padre(P,B), hermano(P,A) ; madre(M,B), hermano(P,A).
