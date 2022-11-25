elemento_k([Result|_], 0, Result).
elemento_k([_|L], K, Result):- K>0, K1 is K-1, elemento_k(L, K1, Result).