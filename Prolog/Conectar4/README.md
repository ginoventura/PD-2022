# TRABAJO PRACTICO - PROGRAMACIÓN DECLARATIVA
# JUEGO CON PROLOG 
# CONECTAR 4 
INTEGRANTES DEL GRUPO:
- MORA JONATHAN
- LUGANI SANTIAGO
- VENTURA GINO

## DESCRIPCIÓN:

Conectar 4 es un juego de mesa para dos jugadores que tiene lugar en una cuadrícula de 6x7. Los jugadores, alternativamente, dejan caer sus discos en una de las 7 columnas de la cuadrícula.
Una columna siempre se llena de abajo hacia arriba. El jugador que logra conectar 4 discos (horizontal, vertical o diagonalmente) gana el juego.
El juego termina en empate cuando la cuadrícula está llena sin ninguna conexión directa de 4 discos de un solo jugador.

## COMPORTAMIENTO DE LA MÁQUINA:
La máquina intenta lograr los siguientes objetivos dentro de un solo nivel de profundidad (la prioridad disminuye de arriba a abajo):

* Gana dentro de un movimiento.

* Interceptar una conexión 4 del oponente, colocando el disco en un lugar que aumenta la conexión de una máquina.

* Interceptar una conexión de 4 del oponente.

* Juega arbitrariamente. De forma predeterminada, arrastra el disco en el primer lugar libre de las columnas de izquierda a derecha.

## REQUERIMIENTOS:
Se recomienda usar el compilador GNU Prolog (http://www.gprolog.org/) Una vez instalado gprolog, los pasos para ejecutar el juego son:

* Ejecute `gprolog` en la línea de comandos.

* Una vez en el entorno gprolog, compile con `[conectar4].`.

* Finalmente, ejecute el juego con `connect4.`. Introduzca un carácter de la A a la G para colocar un disco en la columna asociada.

* También puede funcionar en otros compiladores.