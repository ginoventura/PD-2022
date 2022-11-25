
suma = 0
promedio = 0
mayores = 0
vector = []

cantidad = int(input("Ingrese la cantidad de temperaturas: ")) 

for i in range(cantidad):
    temperatura = float(input("Ingrese Temperatura {}: ".format(i + 1)))
    vector.append(temperatura)
    suma = suma + vector[i]

media = suma / cantidad 

for n in vector: 
    if n >= media:
        mayores += 1

print ("La media es ", media)
print ("El total de temperaturas >= a la media es de: ", mayores)