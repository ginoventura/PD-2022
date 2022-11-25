contador = 0
suma = 0
numero = 1

n = int(input("Ingrese la cantidad de números a calcular: ")) 

while contador != n: 
    numero = int(input("Ingrese el número: "))
    suma += numero
    contador += 1

promedio = suma / contador
print("El promedio de los {} números es igual a {}.".format(contador, promedio))