resto([_|L], L).

pertenencia(X,[X|_]).
pertenencia(X,[_|L]) :- pertenencia(X,L).

tamanio([],0).
tamanio([_|L],N) :- tamanio(L,N1), N is N1+1.

iguales([]).
iguales([_]).
iguales([X,X|L]) :- iguales([X|L]).

mayor(X,Y,X) :- X>Y.
mayor(X,Y,Y) :- X<Y.

sumLista([],0).
sumLista([X|L],Y) :- sumLista(L,Y1), Y is X+Y1.

orden([_]).
orden([X,Y|L]) :- X=<Y, orden([Y|L]).

lista_num(N,N,[N]).
lista_num(N,M,[N|L]) :- N<M, N1 is N+1, lista_num(N1, M, L).

insert(X,[],[X]).
insert(X,[Y|Ys], [X,Y|Ys]) :- X<Y.
insert(X, [Y|Ys], [Y|Zs]) :- X>=Y, insert(X,Ys,Zs).

capicua(L) :- reverse(L,L).