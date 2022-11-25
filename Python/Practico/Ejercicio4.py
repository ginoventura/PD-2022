import random

contador = 0
numero = 0
impares = 0

cant = int(input("Ingrese la cantidad de números aleatorios a generar: ")) 
print("{} números impares generados aleatoriamente: ".format(cant))

while contador != cant:
    numero = random.randint(1,100)
    contador += 1
    print(numero, end = ' ')

    if numero % 2 != 0:
        impares += 1

print("\nCantidad de números impares: {}".format(impares))

