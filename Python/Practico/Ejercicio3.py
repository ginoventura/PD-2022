n = 0
pares = 0

while n != 20:
    num = int(input("Ingrese un número: ")) 
    n += 1

    if num % 2 == 0:
        pares += 1 

print("Cantidad de números pares: {}".format(pares))