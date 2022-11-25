vector = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numero = int(input("Ingrese un número a buscar en el vector: "))
posicion = -1
    
for i in range(len(vector)):
    if vector[i] == numero:
        posicion = i
    
if posicion == -1:
    print("El número {} no se encontró en el vector. ".format(numero))
else:
    print("El número {} se encuentra en la posición {} del vector.".format(numero, posicion))