vector = []
vectorPares = []
vectorImpares = []

for i in range(25):
    numero = int(input("Ingrese un número a agregar: "))
    vector.append(numero)

for i in range(len(vector)):
    if vector[i] % 2 == 0:
        vectorPares.append(vector[i])
    else:
        vectorImpares.append(vector[i])

if len(vectorPares) > len(vectorImpares):
    print("El vector de pares tiene mayor cantidad de elementos.")
else:
    print("El vector de impares tiene mayor cantidad de elementos.")

print("Vector de pares: ", vectorPares)
print("Vector de impares: ", vectorImpares)

print("Cantidad de elementos del vector de pares: ", len(vectorPares))
print("Cantidad de elementos del vector de impares: ", len(vectorImpares))