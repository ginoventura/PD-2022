% ---------------------------------------------------------------
% --------- TRABAJO PRACTICO - PROGRAMACION DECLARATIVA ---------
% ---------------------- JUEGO CON PROLOG -----------------------
% ------------------------- CONECTAR 4 --------------------------
% INTEGRANTES DEL GRUPO:
% - MORA JONATHAN
% - LUGANI SANTIAGO
% - VENTURA GINO
%----------------------------------------------------------------

% --------------------------- TABLERO ---------------------------
% Inicializamos un tablero vacio (una matriz de 7 columnas y 6 filas). 

initial(board([['-','-','-','-','-','-'],
	       ['-','-','-','-','-','-'],
	       ['-','-','-','-','-','-'],
	       ['-','-','-','-','-','-'],
	       ['-','-','-','-','-','-'],
	       ['-','-','-','-','-','-'],
	       ['-','-','-','-','-','-']])).


% ---------------------- MOSTRAR TABLERO ----------------------
show(board(X)):- write('  A B C D E F G'), nl,
		 iShow(X,6).

% show(X, N) muestra las lineas desde [N hasta 1] del tablero X
iShow(_,0).
iShow(X,N):- showLine(X,N,X2),
	     Ns is N-1,
	     iShow(X2,Ns).

% showLine(X,N,X2) escribe N y muestra la primer linea del tablero X (primer elemento de cada columna)
% X2 es X sin la linea mostrada
showLine(X,N,X2):- write(N), write(' '),
iShowLine(X,X2), nl.

% iShowLine(X,X2) escribe el primer elemento de cada columna. X2 es X sin la linea mostrada
iShowLine([],_).
iShowLine([[X|X2]|XS],[X2|XS2]):- write(X), write(' '),
			          iShowLine(XS,XS2).

% --------------------- COMO SE JUEGA ------------------------
% Inicializamos el tablero y comienza el juego.
connect4:- initial(X),
	   show(X),
	   nextMove('X',X), !.

% nextMove(J,X) J es el jugador que necesita moverse ('O' or 'X') y X es el tablero. 
% Comprueba si el juego ha terminado, si no ha terminado realiza el siguiente movimiento.
nextMove('X',X):- wins('O',X),
		  write('La Maquina gana!').
nextMove('O',X):- wins('X',X),
		  write('Ganaste!').
nextMove(_,X):- full(X),
		write('Empate!').
nextMove('X',X):- repeat, %repite en caso de que una columna este llena
		  readColumn(C),
		  play('X',C,X,X2), !,
		  show(X2),
		  nextMove('O',X2). 
nextMove('O',X):- machine('O','X',X,X2),
		  show(X2),
		  nextMove('X',X2).

% play(X,P,T,T2) se cumple si T2 es el tablero T despues de que el jugador X se mueve en la columna P
play(X,P,board(T),board(T2)):- append(I,[C|F],T),
			       length(I,P), 
		               playColumn(X,C,C2),
			       append(I,[C2|F],T2).

% playColumn(X,C,C2) se cumple si la columna C2 es la columna C despues de que el jugador X juegue allí
playColumn(X,['-'],[X]):- !. % ultimo lugar en la columna
playColumn(X,['-',A|AS],[X,A|AS]):- A \== ('-'), !. % jugar por encima de la pieza de alguien
playColumn(X,['-'|AS],['-'|AS2]):- playColumn(X,AS,AS2). % descender columna


% wins(X,T) se cumple si el jugador X ha ganado en el tablero T
% Comprueba si hay una columna en T con 4 piezas conectadas del jugador X

wins(X,board(T)):- append(_, [C|_], T), % % Comprueba si hay una columna
	           append(_,[X,X,X,X|_],C). % que tenga 4 piezas conectadas del jugador X

% Comprueba si hay una fila en T con 4 piezas conectadas del jugador X
wins(X,board(T)):- append(_,[C1,C2,C3,C4|_],T), 
		   append(I1,[X|_],C1), 
		   append(I2,[X|_],C2),
		   append(I3,[X|_],C3),
		   append(I4,[X|_],C4),
		   length(I1,M), length(I2,M), length(I3,M), length(I4,M). % comprueba si cada pieza tiene la misma altura

% Comprueba si hay una diagonal (de tipo \) en T con 4 piezas conectadas del jugador X.
wins(X,board(T)):- append(_,[C1,C2,C3,C4|_],T), % Comprueba si existen 4 columnas en el tablero...
		   append(I1,[X|_],C1), % ... donde cada una contiene una pieza del jugador X
		   append(I2,[X|_],C2),
		   append(I3,[X|_],C3),
		   append(I4,[X|_],C4),
		   length(I1,M1), length(I2,M2), length(I3,M3), length(I4,M4),
		   M2 is M1+1, M3 is M2+1, M4 is M3+1. % y todas las piezas estan en la misma diagonal (de tipo \)

% Comprueba si hay una diagonal (del tipo /) en T con 4 piezas conectadas del jugador X
wins(X,board(T)):- append(_,[C1,C2,C3,C4|_],T), % Comprueba si existen 4 columnas en el tablero...
		   append(I1,[X|_],C1), % ... donde cada una contiene una pieza del jugador X ...
		   append(I2,[X|_],C2),
		   append(I3,[X|_],C3),
		   append(I4,[X|_],C4),
		   length(I1,M1), length(I2,M2), length(I3,M3), length(I4,M4),
		   M2 is M1-1, M3 is M2-1, M4 is M3-1. % ... y todas las piezas estan en la misma diagonal (de tipo /)

% full(T) se cumple si no hay ningun lugar libre ('-') 
full(board(T)):- \+ (append(_,[C|_],T),
		 append(_,['-'|_],C)).

% --------------------- LECTURA DE MOVIMIENTOS -----------------------
% Lectura de una columna
readColumn(C):- nl, write('Columna: '),
		repeat,
		get_char(L),
		associateColumn(L,C),
		col(C), !.

% associateColumn(L,C) la columna C es la columna asociada con el char L
associateColumn(L,C):- atom_codes(L,[La|_]),
		       C is La - 65.

% associateChar(L, C) char L es el char asociado con la columna C
associateChar(L, C):- Ln is 65+C,
		      atom_codes(L,[Ln]).

% Columnas validas
col(0).
col(1).
col(2).
col(3).
col(4).
col(5).
col(6).

% --------------------- COMPUTADORA ------------------------
% machine(R,O,T,T2) Sea R la pieza de la computadora o la pieza del oponente y T el tablero de juego.
% Entonces T2 es el tablero T despues del movimiento de la maguina gana si es posible
machine(R,_,T,T2):- iMachine(R,T,C,T2),
		    nl, write('Computadora: '),
		    associateChar(L,C),
		    write(L),
		    nl,!.

% de otra forma, si la maquina no puede ganar dentro de un movimiento, juega un movimiento que no permita que el
% oponente gane y pueda obtener un 4 conectado
machine(R,O,T,T2):- findall((Col,TA), (col(Col), play(R,Col,T,TA),\+ iMachine(O,TA,_,_), goodMove(R,Col,T)), [(C,T2)|_]),
		    nl, write('Computadora: '),
		    associateChar(L,C),
		    write(L),
		    nl,!.

% de lo contrario, hace un movimiento que no permita que el oponente gane
machine(R,O,T,T2):- findall((Col,TA), (col(Col), play(R,Col,T,TA),\+ iMachine(O,TA,_,_)), [(C,T2)|_]),
		    nl, write('Computadora: '),
		    associateChar(L,C),
		    write(L), nl,
		    write('-'),!.

% de lo contrario, realiza un movimiento interceptando una de las futuras opciones ganadoras del oponente
machine(R,O,T,T2):- iMachine(O,T,C,_),
		    play(R,C,T,T2),
		    nl, write('Computadora: '),
		    associateChar(L,C),
		    write(L), nl.

% de lo contrario, juega donde sea
machine(R,_,T,T2):- col(C),
		    play(R,C,T,T2),
		    nl, write('Computadora: '),
		    associateChar(L,C),
		    write(L), nl.
				  
% iMachine(R,T,C,T2) se cumple si el jugador R puede jugar en la Columna C del tablero T y obtener un tablero ganador T2
iMachine(R,T,C,T2):- findall((Col,TA), (col(Col), play(R,Col,T,TA),wins(R,TA)),[(C,T2)|_]).

% Se considera que una buena jugada es aquella que nos permite ganar en una columna, otras mejores: filas y diagonales
goodMove(R,Col,board(T)):- append(I,[C|_],T),
			   length(I,Col),
			   maxConnected(R,C,MaxConn),
			   MaxConn >= 4.						

% maxConnected(R,C,MaxConn) es el numero maximo de piezas conectadas que el jugador R tiene/podria tener en la columna C.
maxConnected(_,[],0).
maxConnected(R,[X|_],0):- X\=R.
maxConnected(R,['-'|X],N):- maxConnected(R,X,Ns),
			    N is Ns+1.
maxConnected(R,[R|X],N):- maxConnected(R,X,Ns),
			  N is Ns+1.